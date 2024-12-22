ARG RUBY_VERSION=3.3.6
FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev

# Set the working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the application code
COPY . .

# Expose the default Rails port
EXPOSE 3000

# Specify the command to run the Rails API server
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "80"]
