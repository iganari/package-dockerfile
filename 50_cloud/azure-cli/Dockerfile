ARG _TAG=2.5.1
FROM mcr.microsoft.com/azure-cli:${_TAG}
# https://hub.docker.com/_/microsoft-azure-cli
# Tag List --> https://mcr.microsoft.com/v2/azure-cli/tags/list

MAINTAINER iganari

# OS Prepare
# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*
