FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install adobe_crx --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["crx"]
CMD ["--help"]
