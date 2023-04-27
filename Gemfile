source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.3"

gem "actionpack"
gem "actionview"
gem "actiontext"
gem "activesupport"
gem "railties"

gem "pg"
gem "puma", "~> 5.0"
gem "bootsnap", ">= 1.4.4", require: false

gem "sprockets-rails"
gem "cssbundling-rails", "~> 1.1"

gem "faker"

gem "phlex-rails"

gem "view_component", "~> 3.0.0"

if ENV["LOOKBOOK_PATH"]
  gem "lookbook", path: ENV["LOOKBOOK_PATH"]
else
  gem "lookbook", "~> 2.0.0"
end

group :development do
  gem "actioncable"
  gem "listen", "~> 3.3"
end