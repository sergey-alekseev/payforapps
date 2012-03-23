source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem "devise", ">= 2.0.4"
gem 'jquery-rails'
gem 'heroku'
gem 'cancan'
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'
gem 'therubyracer'

group :development do
  gem "rspec-rails", ">= 2.8.1"
  gem 'sqlite3'
  gem 'guard-rspec', '0.5.5'
end

group :test do
  gem "rspec-rails", ">= 2.8.1"
  gem 'capybara'
  gem "factory_girl_rails", ">= 1.7.0"
  gem "email_spec", ">= 1.2.1"
  gem 'guard-spork', '0.3.2'
  gem 'spork', '0.9.0'
  gem 'cucumber-rails', '1.2.1', require: false
  gem 'database_cleaner', '0.7.0'
end

group :production do
  gem 'pg'
  gem 'thin'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end