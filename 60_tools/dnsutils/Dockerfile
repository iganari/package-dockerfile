ARG _TAG=3.14.1
FROM alpine:${_TAG}
# https://hub.docker.com/_/alpine?tab=tags&page=1&ordering=last_updated 

ENV _VERSION 3.9.3

# # Metadata
# LABEL org.label-schema.vcs-url=https://github.com/iganari/package-dockerfile/tree/master/30_aws/aws-cli \
#       org.label-schema.alpine-version=${_VERSION}


# OS Prepare
# Setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# Install git, OpenSSH
RUN apk --update add git openssh bind-tools && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apk/*
