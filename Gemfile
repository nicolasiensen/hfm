source 'http://rubygems.org'
ruby "2.3.8"

gem 'rails', '3.2.22'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg', '~> 0.18'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.2.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', require: false
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end

group :test, :development do
  gem "rspec-rails", "~> 2.99.0"
  gem 'shoulda-matchers', "~> 1.5.0"
  gem 'byebug'
end

gem 'factory_bot_rails'
gem 'inherited_resources'
gem 'haml', "~> 4.0.0"
gem "sass-rails", "~> 3.2.0"
gem "omniauth"
gem "omniauth-facebook"
gem "cancan"
gem "launchy"
gem 'test-unit' # required by should-matchers