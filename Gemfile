source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

gem "rails", "~> 7.0.3"
gem "puma", "~> 5.0"
# gem "jbuilder"
# gem "redis", "~> 4.0"
# gem "kredis"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
# gem "image_processing", "~> 1.2"
gem "rack-cors"
gem "rename"
  # SameSite属性を None かつ Secure属性を true にします
gem "rails_same_site_cookie", "~> 0.1.8"

group :development, :test do
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails'
end

group :development do
  # gem "spring"
end

group :production do
  gem 'pg'
end
