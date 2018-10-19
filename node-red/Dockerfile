FROM iganarix/base-ubuntu-16.04
# https://hub.docker.com/r/iganarix/base-ubuntu-16.04/

MAINTAINER iganari

# install nodeje-8 for Node-RED
RUN curl -sL https://deb.nodesource.com/setup_8.x | /bin/bash
RUN apt-get install -y nodejs
RUN npm install -g --unsafe-perm node-red

# Home directory for Node-RED application source code.
RUN mkdir -p      /usr/local/node-red &&\
    chmod 0777 -R /usr/local/node-red

# User data directory, contains flows, config and nodes.
RUN mkdir /data

WORKDIR /usr/local/node-red

# Add node-red user so we aren't running as root.
ENV user_name=node-red-user
RUN adduser -h /home/${user_name} -D -s /bin/sh ${user_name}
RUN adduser --home /home/${user_name} \
            --disabled-password  \
            --shell /bin/bash \
            ${user_name}
# RUN echo "${user_name} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${user_name}
# RUN chmod 0440                                   /etc/sudoers.d/${user_name}

USER ${user_name}

# package.json contains Node-RED NPM module and node dependencies
# COPY package.json /usr/local/bin/node-red
# RUN npm install
RUN npm install node-red

EXPOSE 1880

CMD ["/usr/local/node-red/node_modules/node-red/bin/node-red-pi"]
