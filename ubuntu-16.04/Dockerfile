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
                    python-pip
RUN pip install --upgrade pip
