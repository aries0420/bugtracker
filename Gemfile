source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'dynamic_form', '1.1.4'
gem 'devise', '~> 2.2.4'
gem 'jquery-rails'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem "better_errors" #replaces the standard Rails error page with a much better and more useful error page
  gem 'meta_request'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'simplecov', :require => false, :group => :test
  gem 'capybara', '1.1.2'
  #gem 'capybara-webkit', '~> 1.0.0'
  gem 'launchy'
  gem 'factory_girl', '2.6.4'
  gem 'email_spec', '1.2.1'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 2.11'
  gem 'pry-rails' # REPL - read evaluate print loop. Just like irb.
  gem 'pry-debugger'
  gem 'pry-doc'
  gem "binding_of_caller" #grab bindings from higher up the call stack and evaluate code in that context. Allows access to bindings arbitrarily far up the call stack, not limited to just the immediate caller.
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
