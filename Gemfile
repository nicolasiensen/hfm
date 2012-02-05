source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem "compass", "~> 0.12.alpha.0"
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
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
  gem 'turn', :require => false
  gem 'cucumber-rails'
  gem 'database_cleaner'
end

group :test, :development do
  gem "rspec-rails", "~> 2.6"
  gem 'shoulda-matchers'
end

gem 'factory_girl_rails'
gem 'inherited_resources'
gem 'haml'

group :production do
  gem "pg"
end

gem "sass-rails", "~> 3.1.0"
gem "omniauth"
gem "omniauth-facebook"
gem "cancan"
gem "launchy"
gem "heroku"
