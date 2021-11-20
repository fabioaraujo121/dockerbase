
FROM ruby:3.0.0-slim

#RUN apt-get install -y openssh-server nano curl git sudo

RUN apt-get update
RUN apt-get install -y build-essential automake autoconf \
    bison libssl-dev libyaml-dev libreadline6-dev \
    zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev \
    gawk g++ gcc make libc6-dev patch libsqlite3-dev sqlite3 \
    libtool pkg-config libpq-dev ruby-full curl git gnupg2

RUN curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh

RUN /bin/bash nodesource_setup.sh

RUN apt-get -y install nodejs

RUN apt-get install build-essential

RUN npm install --global yarn

RUN mkdir /dockerbase

WORKDIR /dockerbase

COPY Gemfile /dockerbase/Gemfile
COPY Gemfile.lock /dockerbase/Gemfile.lock

RUN bundle install

COPY . /dockerbase

RUN yarn install --check-files

RUN rails webpacker:install

RUN yarn add bootstrap@5.1.3

RUN yarn add popper.js

RUN rails db:create

RUN rails webpacker:install
