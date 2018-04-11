FROM ubuntu:xenial-20180228

MAINTAINER iganari

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get -y \
            -o DPkg::options::="--force-confdef" \
            -o DPkg::options::="--force-confold"  \
            upgrade
RUN apt-get install -y \
                    openssh-server \
                    python-apt \
                    python-pip \
                    tzdata \
                    vim
RUN pip install --upgrade pip

RUN echo 'LANG="en_US.UTF-8"' > /etc/default/locale
RUN rm -rfv /etc/localtime &&\
    ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
    dpkg-reconfigure -f noninteractive tzdata
