# frozen_string_literal: true

source "http://rubygems.org"
ruby "2.5.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "active_model_serializers"
gem "api-pagination"
gem "bcrypt", "~> 3.1.7"
gem "figaro"
gem "jwt"
gem "pg", "~> 0.18"
gem "puma", "~> 4.3"
gem "rack-cors"
gem "rails", "~> 5.1.4"
gem "ransack"
gem "will_paginate"

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
