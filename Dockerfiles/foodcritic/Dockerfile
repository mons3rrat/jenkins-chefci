FROM ruby:2.4-alpine

MAINTAINER Monserrat Sedeno <monserrat.sedeno@digitalonus.com>

ARG BUNDLER_ARGS="--jobs 3 --retry 3"

RUN set -ex && \
  # install dependencies
  apk add --no-cache --virtual alpine-sdk && \
  bundle install --system $BUNDLER_ARGS

#RUN chown -R foodcritic:foodcritic /foodcritic

#USER foodcritic

#ENTRYPOINT ["/foodcritic/bin/foodcritic"]
#CMD ["/foodcritic/bin/foodcritic","--help"]
