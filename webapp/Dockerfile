FROM ruby:2.1-onbuild

MAINTAINER sayar.jesus@gmail.com

WORKDIR /usr/src

COPY . /usr/src/

RUN bundle install

EXPOSE 9292

CMD bundle exec puma