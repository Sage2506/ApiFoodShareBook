# ApiFoodShareBook (Rails API)

ApiFoodShareBook is a Rails API-only backend for managing dishes, ingredients,
measures, users, and role/permission data for the FoodShareBook application.

This document is an onboarding guide intended for mid/senior developers.

## 1. Tech Stack and Runtime

- Ruby: `3.1.0`
- Rails: `7.0.1` (API-only mode)
- Database: PostgreSQL
- Auth: JWT (`Authorization: Bearer <token>`)
- Serialization: ActiveModelSerializers
- Querying and pagination: Ransack + API Pagination + WillPaginate

## 2. Repository Structure

- `app/controllers/api/v1`: versioned REST API controllers
- `app/models`: domain models and associations
- `app/serializers`: API response serializers
- `db/migrate`, `db/schema.rb`, `db/seeds.rb`: persistence layer
- `lib/json_web_token.rb`: token encoding/decoding/validation
- `config/routes.rb`: API endpoints

## 3. Prerequisites

Install the following before bootstrapping the project:

1. Ruby `3.1.0` (rbenv or rvm recommended)
2. Bundler (`gem install bundler`)
3. PostgreSQL 13+ (or a compatible local version)

## 4. First-Time Setup

From the `ApiFoodShareBook` folder:

```bash
bundle install
```

### 4.1 Create `config/database.yml`

This file is intentionally not committed.

Create `config/database.yml` with local PostgreSQL credentials. Example:

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  host: localhost
  username: postgres
  password: postgres

development:
  <<: *default
  database: api_food_share_book_development

test:
  <<: *default
  database: api_food_share_book_test

production:
  <<: *default
  database: api_food_share_book_production
  username: <%= ENV["API_FOOD_SHARE_BOOK_DB_USER"] %>
  password: <%= ENV["API_FOOD_SHARE_BOOK_DB_PASSWORD"] %>
```

### 4.2 Initialize DB

```bash
bin/rails db:create db:migrate db:seed
```

If you prefer the setup script:

```bash
bin/setup
```

Note: `bin/setup` also runs `db:prepare`, clears temp/log files, and attempts
to restart the app server.

## 5. Run the API

Start on port `5000` (expected by the React frontend in this workspace):

```bash
bin/rails s -p 5000
```

Base API URL:

- `http://localhost:5000/api/v1`

## 6. Authentication Model

JWT is used for authenticated endpoints.

1. Obtain a token via:
   - `POST /api/v1/users/login`
2. Send token in request headers:
   - `Authorization: Bearer <token>`
3. Token validation includes:
   - expiration (`exp`)
   - issuer (`iss`)
   - audience (`aud`)

If token parsing or validation fails, API returns `401 Invalid Request`.

## 7. Common API Endpoints

All endpoints are under `/api/v1`.

### Users

- `GET /users`
- `POST /users`
- `POST /users/login`
- `GET /users/current_user_data`
- `GET /users/:id`
- `PUT /users/:id`
- `PUT /users/:user_id/update_permissions`
- `GET /users/:user_id/permissions`

### Core catalog

- `GET|POST|PUT|DELETE /dishes`
- `GET|POST|PUT|DELETE /ingredients`
- `GET|POST|PUT|DELETE /measures`
- `GET|POST|DELETE /dish_ingredients`
- `GET|POST|DELETE /ingredient_measures`

### Authorization domain

- `GET|POST|PUT /permissions`
- `GET|POST /permission_types`
- `GET /permission_types/:permission_type_id/current_user_permissions`
- `POST|DELETE /user_permissions`
- `GET|POST /roles`

## 8. Querying and Pagination

Collection endpoints support search through Ransack query params and pagination
headers exposed through CORS.

Typical query pattern:

```text
GET /api/v1/users?q[email_cont]=john
```

Pagination metadata is exposed via response headers:

- `Pagination-Page`
- `Pagination-Per-Page`
- `Pagination-Total`

## 9. CORS and Frontend Integration

CORS currently allows:

- `localhost:3000`

This matches the React frontend app in the same workspace. If your frontend
runs from another origin, update `config/initializers/cors.rb`.

## 10. Test and Quality Commands

Run the test suite:

```bash
bin/rails test
```

Run static analysis (if enabled locally):

```bash
bundle exec rubocop
```

## 11. Seed Data Notes

`db/seeds.rb` creates baseline roles, users, measures, ingredients, dishes, and
permission types.

Important for local development:

- It creates at least one admin user.
- It inserts sample Spanish-language content for dishes/ingredients.

If you need a clean reset:

```bash
bin/rails db:drop db:create db:migrate db:seed
```

## 12. Known Gotchas

1. `config/database.yml` is not in the repository and must be created locally.
2. The API relies on `config/secrets.yml` in development/test for JWT signing.
3. CORS is narrow by default (`localhost:3000` only).
4. Frontend default API target is `http://localhost:5000/api/v1/`.

## 13. Daily Developer Workflow (Suggested)

1. Pull latest changes.
2. Run `bundle install` if gems changed.
3. Run `bin/rails db:migrate`.
4. Start API on port 5000.
5. Authenticate through `/users/login` and validate protected endpoints.
6. Run `bin/rails test` before opening a PR.

## 14. Production Readiness Checklist (Short)

- Move all secrets to environment variables.
- Review CORS policy and lock to real frontend domains.
- Add request specs for auth and permission boundaries.
- Add CI pipeline for tests and RuboCop.
- Add structured logging and error monitoring.
