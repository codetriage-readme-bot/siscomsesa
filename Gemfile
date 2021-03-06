source 'https://rubygems.org'

ruby '2.5.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Gems for use in Dokku
gem 'pg'
gem 'rails_12factor', group: :production

# Devise for authentications
gem 'devise'

# Materialize Sass version for Rails Asset Pipeline
gem 'jquery-turbolinks'
gem 'material_icons'
gem 'materialize-sass'

# Use rails_admin gem for administrator site
gem 'rails_admin'
gem 'rails_admin_material'

gem 'kaminari'

# Use gem i18n in rails
gem 'rails-i18n'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: %i[test development]
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'bugsnag'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver

  # Use Brakeman
  gem 'brakeman', require: false

  gem 'capybara', '~> 2.13'
  gem 'rspec-rails'
  gem 'selenium-webdriver'

  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-migrate'
  gem 'guard-rails'
  gem 'guard-rspec'

  gem 'overcommit'
  gem 'rubocop'

  gem 'coveralls', require: false
  gem 'simplecov', require: false, group: :test
end

group :development do
  # Annotate Rails classes with schema and routes info
  gem 'annotate'
  # Access an IRB console on exception pages or by using <%= console %> anywhere
  # in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in
  # the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'guard-ctags-bundler'

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'pry'
  gem 'pry-rails'

  gem 'rails-erd'
end
