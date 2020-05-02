ARG _TAG='20.04'
FROM ubuntu:${_TAG}
# https://hub.docker.com/_/ubuntu/

MAINTAINER iganari

LABEL org.label-schema.vcs-url=https://github.com/iganari/package-dockerfile/tree/master/ubuntu-20.04

ENV DEBIAN_FRONTEND=nointeractive

### Package Install
RUN apt update && \
    apt upgrade -y && \
    apt dist-upgrade -y && \
    apt autoremove -y
RUN apt install -y \
      --no-install-recommends \
      python3-minimal \
      python3-pip \
      openssh-client \
      curl \
      vim \
      tzdata

### Setting Japan locale
RUN echo 'LANG="en_US.UTF-8"' > /etc/default/locale
RUN rm -rfv /etc/localtime &&\
    ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
    dpkg-reconfigure -f noninteractive tzdata
