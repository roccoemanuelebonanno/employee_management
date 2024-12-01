source "https://rubygems.org"

gem "rails", "~> 8.0.0"

gem "pg", "~> 1.1"
gem "puma", ">= 5.0"

gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "importmap-rails"
gem "jbuilder"
gem "propshaft"
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"
gem "stimulus-rails"
gem "thruster", require: false
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "kamal", require: false

group :development, :test do
  gem "brakeman", require: false
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "factory_bot_rails"
  gem "faker", require: false
  gem "itax_code"
  gem "pry"
  gem "rspec-rails"
  gem "rubocop"
  gem "rubocop-rails", require: false
  gem "rubocop-rails-omakase", require: false
  gem "shoulda-matchers", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
