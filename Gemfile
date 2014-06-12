source 'https://rubygems.org'

gem 'rails', '3.2.18'

# Used for heroku deployments
group :production do
  gem 'pg'
  gem 'memcachier'
  gem 'rails_12factor'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Used to localize fields
gem 'globalize', '~> 3.0.4'
gem 'activeadmin', '~> 0.6.3'
gem 'activeadmin-globalize', github: 'fabn/activeadmin-globalize', branch: :develop

gem 'sqlite3', group: :development

# Use unicorn as the app server
# gem 'unicorn'
