# encoding: utf-8

source "http://rubygems.org"

gemspec

gem 'activeadmin', :git => "git://github.com/ikusei/active_admin.git", :require => "activeadmin"
gem 'goldencobra', :git => 'ssh://git@git.ikusei.de:7999/GC/basis-modul.git'
gem 'acts-as-taggable-on', :git => 'git://github.com/mbleigh/acts-as-taggable-on.git'
gem 'compass-rails'
gem 'coffee-rails'
gem 'sass'

gem "rspec-rails", :group => [:test, :development] # rspec in dev so the rake tasks run properly
gem 'railties', '3.2.12'

group :development do
  gem 'thin'
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
  gem 'guard-annotate'
  gem 'pry'
  gem 'thin'
  gem 'git-pivotal'
end

group :test do
  gem 'rspec'
  gem "shoulda-matchers"
  gem 'mysql2'
  gem 'cucumber'
  gem 'cucumber-rails', '~> 1.3.0'
  gem "factory_girl_rails"
  gem 'database_cleaner'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'webrat'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'guard-livereload'
  gem 'rb-fsevent', :git => 'git://github.com/ttilley/rb-fsevent.git', :branch => 'pre-compiled-gem-one-off'
  gem 'growl'
  gem 'launchy'
  gem 'email_spec'
end
