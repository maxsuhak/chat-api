source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.2', '>= 6.0.2.2'

gem 'active_model_serializers'
gem 'bootsnap', '>= 1.4.2', require: 'bootsnap/setup'
gem 'case_transform'
gem 'devise'
gem 'devise-jwt', '~> 0.5.8'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-cors'
gem 'redis', '~> 4.0'
gem 'rswag'

group :development, :test do
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry', '~> 0.12.2'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'rubocop', '~> 0.80.1', require: false
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
