# ARG _TAG=1.12beta1-alpine3.8
ARG _TAG=1.11.4-stretch
FROM golang:${_TAG}
# https://hub.docker.com/_/golang

MAINTAINER iganari

RUN RUN cp -r /usr/local/go /root/go1.4 && \
    cd /usr/local/go/src/ && \
    ./all.bash
