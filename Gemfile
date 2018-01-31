# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby '2.4.1'

group :development do
  gem 'rubocop'
end

group :test do
  gem 'coveralls', require: false
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
