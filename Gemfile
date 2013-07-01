source 'https://rubygems.org'

ruby '1.9.3'

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

# Rails ERD
gem 'rails-erd'

# Google Charts
gem 'googlecharts', :require => "gchart"

# Twitter Bootstrap
gem 'twitter-bootstrap-rails',"2.2.6" #"~> 2.0rc0"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # gem 'twitter-bootstrap-rails', "~> 2.0rc0"
  # gem 'compass-rails', :git => 'git://github.com/Compass/compass-rails.git'
  # gem 'modular-scale'
  gem "modernizr-rails"
  gem "gumby-framework"
  gem "angularjs-rails"

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
  gem 'capybara'
  gem 'database_cleaner'
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
  gem 'fog', "~>1.3.1"
end

gem 'jquery-rails'
gem 'redactor-rails'
gem 'prawn'#, :git => 'git@github.com:epireve/prawn.git'
gem 'delayed_job_active_record'
gem 'daemons'
gem 'delayed_job_web'
gem 'foreman'
gem 'aws-ses'#, require: 'aws/ses'
gem 'friendly_id'
gem 'acts-as-taggable-on'
gem 'has_scope'
gem 'active_attr'
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
