#!/bin/bash

set -xu
set -e

remove-unused-data() {
    # https://docs.docker.com/engine/reference/commandline/system_prune/
    # 現在使用していないリソースのみ削除する
    docker system prune --all -y
}

remove-local-volume() {
    ### Local Volumes のみを削除
    if [ $(docker volume ls | awk 'NR>1 {print $2}' | wc | awk '{print $1}') = "0" ];then
      :
    else
      docker volume rm -f $(docker volume ls | awk 'NR>1 {print $2}')
    fi
}

stop-container() {
    if [ $(docker ps | awk 'NR>1' | wc | awk '{print $1}') = "0" ];then
      :
    else
      docker stop $(docker ps | awk 'NR>1 {print $1}')
    fi
}

remove-container() {
    if [ $(docker ps -a | awk 'NR>1' | wc | awk '{print $1}') = "0" ];then
      :
    else
      docker rm $(docker ps -a | awk 'NR>1 {print $1}')
    fi
}

remove-image() {
    if [ $(docker images -q | uniq | wc | awk '{print $1}') = "0" ];then
      :
    else
      docker rmi -f $(docker images -q | uniq | awk '{print $1}')
    fi
}

### All Delete
docker system df && \
stop-container && \
remove-container && \
remove-image && \
remove-local-volume && \
docker system df

## ### Only Unused Delete
## docker system df && \
## remove-unused-data && \
## remove-local-volume-only
