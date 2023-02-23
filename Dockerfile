FROM ruby:3.2.1-slim-bullseye
ARG GID
ARG UID
ARG GROUPNAME
ARG USERNAME
RUN groupadd -g $GID $GROUPNAME \
    && useradd -l -m -s /bin/bash -u $UID -g $GID $USERNAME
RUN apt-get update -qq \
    && apt-get -y install --no-install-recommends make=4.3-4.1 build-essential=12.9 git=1:2.30.2-1+deb11u2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN git help
WORKDIR /workspace
COPY Gemfile /workspace/Gemfile
COPY Gemfile.lock /workspace/Gemfile.lock
RUN bundle install
COPY . /workspace

