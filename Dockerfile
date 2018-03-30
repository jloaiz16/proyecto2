FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /proyecto2QA
WORKDIR /proyecto2QA
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . .
RUN ls .
RUN rake db:migrate
EXPOSE 3000
CMD rails

