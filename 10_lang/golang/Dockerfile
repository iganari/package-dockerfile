ARG _TAG=1.12.6-alpine3.10
FROM python:${_TAG}
# https://hub.docker.com/_/golang

MAINTAINER iganari

### OS Prepare
# Setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*
