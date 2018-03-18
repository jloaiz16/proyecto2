#Taken From: https://docs.docker.com/compose/rails/#define-the-project and adapted.
FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /proyecto2
WORKDIR /proyecto2
COPY Gemfile /proyecto2/Gemfile
COPY Gemfile.lock /proyecto2/Gemfile.lock
RUN bundle install
COPY . /proyecto2
RUN ls /proyecto2
RUN rake db:migrate
