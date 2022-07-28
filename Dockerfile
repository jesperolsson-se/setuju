# syntax=docker/dockerfile:1
FROM ruby:2.7

ARG GIT_REVISION=local

LABEL GIT_REVISION=$GIT_REVISION

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

EXPOSE 8080

COPY . .

CMD ["bundle", "exec", "ruby lib/server.rb"]
