ARG _TAG='_GCLOUD_VERSION-slim'
FROM google/cloud-sdk:${_TAG}
# https://hub.docker.com/r/google/cloud-sdk/tags?page=1&name=-slim

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
      procps \
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

RUN pip3 install google-cloud-build
