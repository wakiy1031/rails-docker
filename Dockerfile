FROM ruby:3.2.2

RUN echo "deb http://archive.debian.org/debian/ stretch main" > /etc/apt/sources.list 
RUN echo "deb http://archive.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list 
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs postgresql-client yarn
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp
