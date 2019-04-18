ARG _TAG=3.9.3
FROM alpine:${_TAG}
# https://hub.docker.com/_/alpine

MAINTAINER iganari

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# install git, OpenSSH (https://github.com/alpine-docker/git/blob/master/Dockerfile)
RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
