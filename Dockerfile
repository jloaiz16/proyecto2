FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /proyecto2
WORKDIR /proyecto2
COPY Gemfile /proyecto2/Gemfile
COPY Gemfile.lock /proyecto2/Gemfile.lock
RUN bundle install
COPY . /proyecto2
RUN ls /proyecto2
RUN rake db:migrate
