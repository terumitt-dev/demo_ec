FROM ruby:3.1.2-bullseye

# bullseyeはEOLによりdeb.debian.org/security.debian.orgから提供終了のためarchive.debian.orgへ向ける
# debian-security行はarchive.debian.orgにミラーがないため削除する
RUN sed -i 's|deb.debian.org|archive.debian.org|g; /security/d' /etc/apt/sources.list

RUN apt-get update && apt-get install -y postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

WORKDIR /demo_ec

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle config --global frozen 1 && bundle install

ENV PATH="/usr/local/bundle/bin:${PATH}"
