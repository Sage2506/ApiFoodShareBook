# frozen_string_literal: true

source "http://rubygems.org"
ruby "3.1.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "active_model_serializers"
gem "api-pagination"
gem "bcrypt", "~> 3.1.7"
gem "figaro"
gem "jwt"
gem 'pg', '~> 1.3', '>= 1.3.3'
gem "puma", "~> 4.3"
gem "rack-cors"
gem "rails", "~> 7.0.1"
gem "ransack"
gem 'will_paginate'

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "pry-rails"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
