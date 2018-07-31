FROM ubuntu:bionic-20180724.1
# https://hub.docker.com/_/ubuntu/

MAINTAINER iganari

RUN apt update
RUN apt install -y \
                python3-minimal \
                python3-pip





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
