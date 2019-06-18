ARG _TAG=3.8.0b1-alpine3.9
FROM python:${_TAG}
# https://hub.docker.com/_/python

MAINTAINER iganari

### OS Prepare
# Setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*
