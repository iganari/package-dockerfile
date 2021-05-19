ARG _TAG='8.3'
FROM oraclelinux:${_TAG}

RUN yum update -y && \
    yum install -y python38 \
                   rpm \
                   wget \
                   libaio-devel
RUN ln -s /usr/bin/python3 /usr/bin/python

ADD google-cloud-sdk.repo /etc/yum.repos.d/google-cloud-sdk.repo
RUN yum install -y google-cloud-sdk 

RUN cd /usr/local/src/ && \
    wget https://download.oracle.com/otn_software/linux/instantclient/211000/oracle-instantclient-basic-21.1.0.0.0-1.x86_64.rpm && \
    wget https://download.oracle.com/otn_software/linux/instantclient/211000/oracle-instantclient-sqlplus-21.1.0.0.0-1.x86_64.rpm && \
    rpm -ivh oracle-instantclient-basic-21.1.0.0.0-1.x86_64.rpm && \
    rpm -ivh oracle-instantclient-sqlplus-21.1.0.0.0-1.x86_64.rpm && \
    rm -f oracle-instantclient*.rpm

### If you have a tnsnames.ora
# ADD tnsnames.ora /lib/oracle/21/client64/lib/network/admin/tnsnames.ora
