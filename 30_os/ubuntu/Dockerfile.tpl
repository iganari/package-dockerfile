ARG _TAG='_OS_VERSION'
FROM ubuntu:${_TAG}
# https://hub.docker.com/_/ubuntu/

ENV DEBIAN_FRONTEND=nointeractive

### Package Install
RUN apt update && \
    apt upgrade -y && \
    apt dist-upgrade -y && \
    apt autoremove -y
RUN apt install -y \
      --no-install-recommends \
      software-properties-common \
      python3-minimal \
      python3-pip \
      openssh-client \
      curl \
      vim \
      tzdata && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

### Setting Japan locale
RUN echo 'LANG="en_US.UTF-8"' > /etc/default/locale
RUN rm -rfv /etc/localtime &&\
    ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
    dpkg-reconfigure -f noninteractive tzdata
