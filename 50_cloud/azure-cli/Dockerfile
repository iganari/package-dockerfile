ARG _TAG=2.0.76
FROM mcr.microsoft.com/azure-cli:${_TAG}
# https://hub.docker.com/_/microsoft-azure-cli
# https://github.com/Azure/azure-cli/releases

MAINTAINER iganari

# OS Prepare
# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# https://github.com/Azure/azure-functions-core-tools#other-linux-distributions
