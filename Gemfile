source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'
gem 'puma', '~> 3.7'
gem 'devise', '~> 4.3.0'
gem 'pundit', '~> 1.1'

gem 'resque'

gem 'jquery-rails'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'font-awesome-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

gem 'recaptcha', require: 'recaptcha/rails'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3', '~> 1.3.7'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.5'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
end

group :development do
  gem "capistrano"
  gem "capistrano-rails"

  gem 'capistrano-passenger'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'capistrano-resque'

  gem 'letter_opener'
  gem 'devise-bootstrapped', github: 'king601/devise-bootstrapped', branch: 'bootstrap4'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
end

