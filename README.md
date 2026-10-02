# ApiFoodShareBook

ApiFoodShareBook is the Rails API backend for FoodShareBook, a recipe-sharing
application. It provides a versioned REST API for users and roles, dishes,
ingredients, measures, and the associations used to compose recipes. The data
model also includes user permissions and saved-dish and list-related records.

## Tech stack

- Ruby 3.3.1 (`.ruby-version` and `Gemfile`)
- Rails 7.0.2.2, API-only mode
- PostgreSQL
- Puma
- JWT authentication, with BCrypt password hashing
- ActiveModelSerializers, Ransack, API Pagination, and WillPaginate

## Run locally

### Prerequisites

- Ruby 3.3.1 and Bundler
- PostgreSQL running locally
- A PostgreSQL role that can create databases

From the repository root, configure the local database connection. These
environment variables match the settings read by `config/database.yml`; set
the username and password to match your local PostgreSQL installation:

```sh
export POSTGRES_HOST=localhost
export POSTGRES_PORT=5432
export POSTGRES_USER="$(whoami)"
export POSTGRES_PASSWORD=
```

If PostgreSQL requires a password, set `POSTGRES_PASSWORD` to that password.
The config file is ignored by Git, so create `config/database.yml` if it is
missing:

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS", 5) %>
  host: <%= ENV["POSTGRES_HOST"] %>
  port: <%= ENV.fetch("POSTGRES_PORT", 5432) %>
  username: <%= ENV.fetch("POSTGRES_USER", ENV.fetch("USER")) %>
  password: <%= ENV["POSTGRES_PASSWORD"] %>

development:
  <<: *default
  database: api_food_share_book_development

test:
  <<: *default
  database: api_food_share_book_test
```

The API signs JWTs with `Rails.application.secrets.secret_key_base`. Generate a
local key and keep it out of source control:

```sh
export SECRET_KEY_BASE="$(ruby -rsecurerandom -e 'puts SecureRandom.hex(64)')"
```

Create `config/secrets.yml` if it is missing. This file is also ignored by Git:

```yaml
development:
  secret_key_base: <%= ENV.fetch("SECRET_KEY_BASE") %>

test:
  secret_key_base: <%= ENV.fetch("SECRET_KEY_BASE") %>
```

Install the gems, prepare the development database, and start the API:

```sh
bundle install
bin/rails db:prepare
bin/rails server -p 5000
```

The API is then available at `http://localhost:5000/api/v1`. Keep the database
and secret environment variables set in the terminal session running Rails.
When opening a new terminal, export them again.

> **Seed data:** `db/seeds.rb` currently references measure ID 9, but creates
> only eight measures. On a fresh database, `bin/rails db:seed` can therefore
> fail with a foreign-key error. The API can be started without seed data.

## API overview

Routes are versioned under `/api/v1`. Common resource endpoints include:

- Users: `/users` and `/users/login`
- Dishes: `/dishes`
- Ingredients: `/ingredients`
- Measures: `/measures`
- Recipe associations: `/dish_ingredients` and `/ingredient_measures`
- Roles and permissions: `/roles`, `/permissions`, `/permission_types`, and
  `/user_permissions`

Log in with `POST /api/v1/users/login`, passing `email` and `password` in the
request body. The response contains an `auth_token`; send it on authenticated
requests as `Authorization: Bearer <auth_token>`.

Collection endpoints support Ransack search parameters, for example:

```text
GET /api/v1/users?q[email_cont]=example
```

Pagination metadata is returned in the `Pagination-Page`,
`Pagination-Per-Page`, and `Pagination-Total` response headers.

## Development commands

Run the test suite:

```sh
bin/rails test
```

Run RuboCop:

```sh
bundle exec rubocop
```

The CORS initializer allows `http://localhost:3000` and
`http://127.0.0.1:3000` for local frontend development.
