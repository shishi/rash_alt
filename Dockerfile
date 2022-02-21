FROM rubylang/ruby:3.1.0-focal

WORKDIR /app
RUN chown ubuntu:ubuntu /app
ENV BUNDLE_PATH vendor/path

USER ubuntu

ADD --chown=ubuntu:ubuntu . .
RUN bundle install
