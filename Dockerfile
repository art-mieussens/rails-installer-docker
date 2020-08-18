FROM ruby:2.7

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
    nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install yarn

WORKDIR /usr/src/app

RUN gem install rails --version "~> 6.0"

CMD ["rails", "new", "myapp"]