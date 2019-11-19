FROM ruby:latest
ENV LANG en_US.utf8
ENV LC_ALL C

RUN apt-get -y update && apt-get -y upgrade
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN echo 'mysql-server-5.7.19 mysql-server/root_password password password' | debconf-set-selections \
    && echo 'mysql-server-5.7.19 mysql-server/root_password_again password password' | debconf-set-selections
RUN apt-get -y update && apt-get -y install yarn


RUN gem install rails bundler

RUN mkdir /srv/blog
WORKDIR /srv/blog

COPY sampleapp/Gemfile /srv/blog/Gemfile
COPY sampleapp/Gemfile.lock /srv/blog/Gemfile.lock
RUN bundle install
