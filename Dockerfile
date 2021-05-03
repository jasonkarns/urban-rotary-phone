FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

RUN gem update --system && gem install bundler
# RUN bundle config set --local deployment 'true'
COPY Gemfile* ./
RUN bundle install

COPY . .
