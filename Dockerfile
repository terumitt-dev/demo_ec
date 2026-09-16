FROM ruby:3.1.2-bookworm

RUN apt-get update && apt-get install -y postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

WORKDIR /demo_ec

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle config --global frozen 1 && bundle install

ENV PATH="/usr/local/bundle/bin:${PATH}"
