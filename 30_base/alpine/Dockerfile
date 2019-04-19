ARG _TAG=3.9.3
FROM alpine:${_TAG}
# https://hub.docker.com/_/alpine

MAINTAINER iganari

# Metadata
LABEL org.label-schema.vcs-url=https://github.com/iganari/package-dockerfile/tree/master/30_aws/aws-cli \
      org.label-schema.alpine-version=${_TAG}


# OS Prepare
# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# install git, OpenSSH
RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
