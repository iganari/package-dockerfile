ARG _TAG=1.15.8-alpine3.12
FROM golang:${_TAG}
# https://hub.docker.com/_/golang?tab=tags&page=1&name=-alpine

### OS Prepare
# Setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*
