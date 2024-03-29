ARG _TAG='_GCLOUD_VERSION-alpine'
FROM google/cloud-sdk:${_TAG}
# https://hub.docker.com/r/google/cloud-sdk/tags?page=1&name=-alpine

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# install git
RUN apk --update add git && \
    rm -rfv /var/lib/apt/lists/* && \
    rm -rfv /var/cache/apk/*


# Install kubectl binary via curl
# https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-binary-via-curl
# https://storage.googleapis.com/kubernetes-release/release/stable.txt
ENV _KUBECTL_VERSION='v1.22.1'

# # Metadata
# LABEL org.label-schema.vcs-url=https://github.com/iganari/package-dockerfile/tree/master/50_cloud/gcloud \
#       org.label-schema.kubectl-version=${_KUBECTL_VERSION}

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${_KUBECTL_VERSION}/bin/linux/amd64/kubectl \
         -o /usr/local/bin/kubectl &&\
    chmod 0755 /usr/local/bin/kubectl

RUN gcloud components update --quiet && \
    gcloud components install beta --quiet
