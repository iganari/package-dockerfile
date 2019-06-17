FROM centos:6.9
# https://hub.docker.com/r/igaguri/base-centos-6/

MAINTAINER iganari

RUN yum install -y epel-release && \
    sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/epel.repo

### install package
RUN yum clean all -y && \
    yum install --enablerepo=epel -y vim \
                                     wget \
                                     openssl \
                                     openssl-devel \
                                     tree \
                                     telnet \
                                     nkf \
                                     mlocate \
                                     expect \
                                     ntp \
                                     net-snmp \
                                     net-snmp-utils \
                                     readline-devel \
                                     readline-static \
                                     dstat \
                                     tig \
                                     iftop \
                                     htop

### setting Jp
RUN rm -rfv /etc/localtime && \
    ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo 'LANG="ja_JP.utf8"' > /etc/locale.conf

### install jq
RUN curl -o /usr/local/bin/jq -L https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && \
    chmod 0755 /usr/local/bin/jq


# ### set env
# ADD ./_bashrc /root/.bashrc
# ADD ./_vimrc  /root/.vimrc
# ADD ./_ssh    /root/.ssh
# RUN chmod 0700 -R /root/.ssh
