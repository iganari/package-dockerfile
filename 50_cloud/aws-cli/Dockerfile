ARG _TAG=3.9.3
FROM alpine:${_TAG}
# https://hub.docker.com/_/alpine

MAINTAINER iganari

# OS Prepare

# setting timezone
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# install git, OpenSSH
RUN apk --update add git \
                     openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

# install package for AWS CLI
RUN apk --update add python3 \
                     curl \
                     groff && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*


# Install AWS CLI
# https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html

ARG _AWSCLI_VERSION=1.16.142
# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst

# pip install awscli
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py &&\
    python3 get-pip.py && \
    rm -f get-pip.py && \
    pip3 install awscli==${_AWSCLI_VERSION}

# MicroBadger
LABEL org.label-schema.vcs-url=https://github.com/iganari/package-dockerfile/tree/master/30_aws/aws-cli \
      org.label-schema.alpine-version=${_TAG}

ENV PAGER="less"
ENTRYPOINT ["/usr/bin/aws"]
CMD ["help"]
