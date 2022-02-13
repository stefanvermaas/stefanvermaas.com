# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

gem 'bridgetown', '~> 1.0.0.beta2'

group :development do
  gem 'puma', '~> 5.5' # Puma is a Rack-compatible server used by Bridgetown
  gem 'rubocop', '~> 1.25' # RuboCop is a Ruby code style checking and code formatting tool.
end
