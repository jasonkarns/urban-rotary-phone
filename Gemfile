source "https://rubygems.org"

ruby "2.7.3"

def next?
  File.basename(__FILE__) == "Gemfile_next"
end

gem "rails", next? ? "~> 6.1.3" : "~> 6.0.0"
gem "puma", "~> 4.3"

gem "pg", "~> 1.1"
gem "httparty", "~> 0.17.3"

gem "composite_primary_keys", next? ?
  {github: "composite-primary-keys/composite_primary_keys"} :
  "~> 12"

gem "strong_migrations"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# JSON Serialization
gem "fast_jsonapi"

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Secure password storage and mobile authentication
gem "bcrypt", "~> 3.1.7"
gem "jwt", "~> 2.2.0"

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"

# Scheduling recurring events
gem "ice_cube"

# Stripe-related gems
gem "stripe", "~> 5.14.0"
gem "stripe_event", "~> 2.3.0"

# Pundit for authorization
gem "pundit"

# Roles with rolify
gem "rolify"

# Shoryuken for mailers
gem "shoryuken"
gem "aws-sdk-sqs"

# Raygun for error tracking
gem "raygun4ruby"

# Twilio SDK
gem "twilio-ruby"

# Algolia SDK
gem "algoliasearch"

# SendGrid
gem "sendgrid-actionmailer"

# Generate iCal attachments for emails
gem "icalendar"

# Avalara tax calculation
gem "avatax"

# Google API clients
gem "google-api-client", "~> 0.34" # this one is deprecated
gem "google-apis-calendar_v3", "~> 0.1.0"

gem "aws-sdk-signer"

# Loading csv from S3 in rake task
gem "aws-sdk-s3"
gem "csv"

# Views for Google Data Studio
gem "scenic"

# Salesforce sync
gem "restforce"

group :development, :test do
  gem "bullet"
  gem "dotenv-rails"
  gem "dox", require: false
  gem "factory_bot_rails"
  gem "faker"
  gem "graphiql-rails"
  gem "guard"
  gem "guard-rspec", require: false
  gem "pry-byebug" # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "rspec-rails"
  gem "rspec_junit_formatter"
  gem "standard"
  gem "vcr"
  gem "webmock"
end

group :development do
  gem "listen"
  gem "pry-rails"
  gem "rails-erd"
end

group :test do
  gem "shoulda-matchers"
end
