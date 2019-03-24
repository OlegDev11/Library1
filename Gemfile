source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'dotenv-rails', groups: [:development, :test]
#Standart gems
gem 'rails', '~> 5.2.2'

gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

#Add gems
gem 'twitter-bootstrap-rails'
gem 'simple_form'

gem 'rubocop', require: false

#for image
gem 'carrierwave'
gem 'fog-aws', '~> 3.4.0'
gem 'aws-sdk', '~> 2.3'
gem "mini_magick"
gem 'figaro'
gem 'excon', '~> 0.62.0'

gem 'devise', git: "https://github.com/plataformatec/devise"
gem 'activeadmin'

group :development, :test do
  gem 'sqlite3', '~> 1.3', '< 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :production do
  gem 'pg'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'rake'
