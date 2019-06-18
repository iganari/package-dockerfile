FROM centos:7.6.1810
# https://hub.docker.com/_/centos

MAINTAINER iganari

RUN yum install -y epel-release && \
    sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/epel.repo

### install package
RUN yum clean all -y && \
    yum install --enablerepo=epel -y git \
                                     gcc \
                                     make \     
                                     python-devel \
                                     openssl-devel \
                                     curl-devel \
                                     expat-devel \
                                     gettext-devel \ 
                                     zlib-devel \
                                     perl-ExtUtils-MakeMaker \
                                     vim && \
    yum install --enablerepo=epel -y python-pip && \
    rm -rf /var/cache/yum

### setting Jp
RUN rm -rfv /etc/localtime && \
    ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo 'LANG="ja_JP.utf8"' > /etc/locale.conf

### install git 2
RUN git clone git://git.kernel.org/pub/scm/git/git.git /usr/local/src/git && \
    yum remove -y git && \
    cd /usr/local/src/git && \
    make prefix=/usr/local/git all && \
    make prefix=/usr/local/git install && \
    ln -s  /usr/local/git/bin/git /usr/local/bin/git && \
    cd - \
    rm -rfv /usr/local/src/git


### upgrade pip,setuptools in Python 2.7
RUN pip install --upgrade pip \
                          setuptools

### install Python 3
RUN rpm -ivh https://centos7.iuscommunity.org/ius-release.rpm && \
    yum install -y python36u \
                   python36u-libs \
                   python36u-devel \
                   python36u-pip
RUN ln -s /usr/bin/python3.6 /usr/bin/python3 && \
    ln -s /usr/bin/pip3.6    /usr/bin/pip3 && \
    pip3 install --upgrade pip

### install jq
RUN curl -o /usr/local/bin/jq -L https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && \
    chmod 0755 /usr/local/bin/jq
