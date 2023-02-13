# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

gem 'bridgetown', '~> 1.2.0'

gem 'bridgetown-feed', '~> 3.0' # A Bridgetown plugin to generate an Atom feed of your Bridgetown posts
gem 'bridgetown-seo-tag', '~> 6.0' # A Bridgetown plugin to add metadata tags for search engines and social networks
gem 'bridgetown-svg-inliner', '~> 2.0' # Liquid and ERB helper for Bridgetown to inline SVG files within HTML

group :development do
  gem 'puma', '~> 6.1' # Puma is a Rack-compatible server used by Bridgetown
  gem 'rubocop', '~> 1.42' # RuboCop is a Ruby code style checking and code formatting tool.
end
