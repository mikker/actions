FROM ruby:2-slim

LABEL "com.github.actions.name"="brakeman"
LABEL "com.github.actions.description"="Provides linting using brakeman"
LABEL "com.github.actions.icon"="user-check"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/mikker/actions"
LABEL "homepage"="http://github.com/mikker/actions"
LABEL "maintainer"="Mikkel Malmberg <mikkel@brnbw.com>"

RUN apt-get update -qq && apt-get install -qqy --no-install-recommends \
  curl \
  jq \
  bash \
  git \
  make \
  gcc \
  && rm -rf /var/lib/apt/lists/*

RUN gem install brakeman

COPY lib.sh /lib.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
