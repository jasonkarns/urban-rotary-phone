FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

RUN gem update --system && gem install bundler
# RUN bundle config set --local deployment 'true'
COPY Gemfile* ./
RUN bundle install

COPY . .

# If a server.pid was copied over, remove it (so we can run inside Docker)
# RUN ["rm", "-f", "/app/tmp/pids/server.pid"]
# COPY ./docker-entrypoint.sh /
# ENTRYPOINT ["/docker-entrypoint.sh"]

# EXPOSE 3000

# CMD ["rails", "server", "-b", "0.0.0.0"]
