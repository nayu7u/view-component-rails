FROM ruby:3.2.1-slim-bullseye
ARG GID
ARG UID
ARG GROUPNAME
ARG USERNAME
RUN groupadd -g $GID $GROUPNAME && \
    useradd -l -m -s /bin/bash -u $UID -g $GID $USERNAME
RUN apt-get update -qq && apt-get -y install make build-essential git
RUN git help
WORKDIR /workspace
COPY Gemfile /workspace/Gemfile
COPY Gemfile.lock /workspace/Gemfile.lock
RUN bundle install
COPY . /workspace
