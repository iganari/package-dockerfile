FROM centos:7

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
RUN sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/epel.repo

# RUN rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN yum check-update --enablerepo=epel,remi
# RUN yum check-update
RUN yum clean all -y

RUN yum install -y ansible --enablerepo=epel
