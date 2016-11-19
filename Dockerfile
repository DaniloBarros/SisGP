FROM ruby:2.3

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
            postgresql-client \
                && rm -rf /var/lib/apt/lists/*

RUN mkdir /sisgp
WORKDIR /sisgp
COPY Gemfile /sisgp/Gemfile
COPY Gemfile.lock /sisgp/Gemfile.lock
RUN bundle install
ADD . /sisgp

