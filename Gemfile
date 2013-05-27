source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# User registration/login
gem 'devise'

# Photo Upload
gem 'carrierwave'

# Image manipulation
gem 'mini_magick'

# Mailjet
gem 'mailjet'

# Cron Job
gem 'whenever', :require => false

gem 'mail_form'
gem 'nested_form'
gem 'cancan'

# Haml
gem 'haml-rails', '>= 0.3.4'
gem 'html2haml'

#pagination
gem 'kaminari'

# localized routes
gem 'i18n_routing'

#Refinery
git 'git://github.com/resolve/refinerycms.git' do
  gem 'refinerycms-core'
  gem 'refinerycms-dashboard'
  gem 'refinerycms-images'
  gem 'refinerycms-pages'
  gem 'refinerycms-resources'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'twitter-bootstrap-rails', "~> 2.0rc0"

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem "therubyracer"
  gem "less-rails"
end

group :development, :test do
  gem "rspec-rails", "~> 2.0"
  gem "factory_girl_rails"
  gem 'shoulda-matchers'
end

group :development do
  gem 'mysql2' 
  gem "letter_opener"
end

group :test do 
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'fog'
end

gem 'jquery-rails', '~> 2.0.0'
# gem 'roo', '~> 1.9.5'

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
