source 'https://rubygems.org'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'puma', '~> 3.0'
gem 'active_model_serializers', '~> 0.10.0'
# gem 'deplist', path: '../deplist'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platform: :mri
end

group :test do
  gem 'json_matchers'
  gem 'rspec-rails'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false
end

group :production do
  gem 'pg', '~> 0.18.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
