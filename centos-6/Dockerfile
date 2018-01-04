FROM centos:6.9
# https://hub.docker.com/r/igaguri/

MAINTAINER iganari

RUN yum install -y epel-release && \
     rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm && \
     sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/epel.repo

### install package
RUN yum clean all -y && \
     yum install --enablerepo=epel,remi -y vim \
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

### set env
ADD ./_vimrc  /root/.vimrc
ADD ./_ssh    /root/.ssh
RUN chmod 0700 -R /root/.ssh
