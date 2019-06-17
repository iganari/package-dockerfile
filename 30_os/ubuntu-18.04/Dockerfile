FROM ubuntu:bionic-20190515
# https://hub.docker.com/_/ubuntu/

MAINTAINER iganari

LABEL org.label-schema.vcs-url=https://github.com/iganari/package-dockerfile/tree/master/ubuntu-18.04

RUN apt update
RUN apt install -y \
                python3-minimal \
                python3-pip \
                openssh-client \
                curl \
                vim

RUN curl https://gist.githubusercontent.com/iganari/a2baec1af976425cc8e21ccd68cf5585/raw/b6fce2cc91e1c77da759af1d2ea7b771b597787f/_vimrc -o /root/.vimrc


# RUN DEBIAN_FRONTEND=noninteractive \
#     apt-get -y \
#             -o DPkg::options::="--force-confdef" \
#             -o DPkg::options::="--force-confold"  \
#             upgrade
# RUN apt-get install -y \
#                     openssh-server \
#                     python-apt \
#                     python-pip \
#                     tzdata \
#                     vim
# RUN pip install --upgrade pip
# 
# ### setting jp
# RUN echo 'LANG="en_US.UTF-8"' > /etc/default/locale
# RUN rm -rfv /etc/localtime &&\
#     ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
#     dpkg-reconfigure -f noninteractive tzdata
# 
# ### add 'add-apt-repository'
# RUN apt-get install -y apt-file && \
#     apt-file update && \
#     apt-file search add-apt-repository && \
#     apt-get install -y software-properties-common
# 
# 
# ADD ./_vimrc /root/.vimrc
