ARG _TAG='224.0.0-alpine'

FROM google/cloud-sdk:${_TAG}

MAINTAINER iganari

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# install git (https://github.com/alpine-docker/git/blob/master/Dockerfile)
RUN apk --update add git && \
    rm -rfv /var/lib/apt/lists/* && \
    rm -rfv /var/cache/apk/*


# Install kubectl binary via curl
# https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-binary-via-curl
ARG kubectl_version='v1.12.2'

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${kubectl_version}/bin/linux/amd64/kubectl \
         -o /usr/local/bin/kubectl &&\
    chmod 0755 /usr/local/bin/kubectl

