	source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

gem "annotate", "2.6.2"
gem "devise", "3.2.3"

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end

## for search
gem 'ransack', '~> 1.1.0'

gem "haml", "4.0.4"
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'rspec-rails', '2.13.1'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'kaminari', '0.15.0'
gem 'bootstrap-kaminari-views'
gem "font-awesome-rails", "4.0.3.1"
gem 'acts-as-taggable-on'
gem 'activeadmin', github: 'gregbell/active_admin'

group :test do
	gem 'selenium-webdriver', '2.35.1'
  	gem 'capybara', '2.1.0'
end
#adding shopping cart functionality
gem 'acts_as_shopping_cart', '~> 0.2.0'
