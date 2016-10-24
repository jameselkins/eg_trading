source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '4.2.5.1'
gem 'unicorn-rails'

## db/model
gem 'pg'
gem 'attr_encrypted'

## utilities
gem 'date_validator'
gem 'paranoia'
gem 'paper_trail'
gem 'will_paginate'
gem 'geocoder'

## background jobs ##
gem 'resque'
gem 'resque-pool'
gem 'resque-scheduler'
gem 'resque-sentry'
gem 'resque_mailer'

## ui/forms
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-ui-sass-rails'
gem 'rails-jquery-autocomplete'
gem 'bootstrap-sass'
gem 'haml-rails'
gem 'simple_form'
gem 'cocoon'
gem 'gmaps4rails'

## authentication/authorization ##
gem 'devise'
gem 'devise-async'
gem 'devise_security_extension'
gem 'simple_token_authentication', '~> 1.0'
gem 'cancancan'
gem 'role_model'
gem 'omniauth'

## file uploads ##
gem 'paperclip'
gem 'cocaine'
gem 'delayed_paperclip'

## client ##
gem 'pusher'
gem 'aws-sdk', '~> 1.6'

## security ##
gem 'bundler-audit', require: false # Patch-level verification for Bundler

## printing ##
gem 'awesome_print'
gem 'table_print'

# needed in all envs
gem 'rspec-rails'

## time ##
gem 'holidays'

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'pry-stack_explorer'
  gem 'pry-rescue'
  gem 'dotenv-rails', git: 'git://github.com/bkeepers/dotenv.git'
end

group :test do
  gem 'launchy'
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'poltergeist'
  gem 'shoulda-matchers'
  gem 'timecop'
  gem 'selenium-webdriver'
  gem 'webmock', require: false
  gem 'vcr', require: false
  gem 'pusher-fake', require: false
  gem 'rspec-instafail', require: false
end

group :development, :test, :staging do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :assets do
  gem 'sass-rails', '~> 5.0'
  gem 'coffee-rails'
  gem 'uglifier', '>= 1.3.0'
end
