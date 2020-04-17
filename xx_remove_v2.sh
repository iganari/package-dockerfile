#!/bin/bash

set -xu
set +e

remove-unused-data() {
    # https://docs.docker.com/engine/reference/commandline/system_prune/
    # 現在使用していないリソースのみ削除する
    docker system prune --all -y
}

remove-container-images() {
    docker stop $(docker ps | awk 'NR>1 {print $1}')
    docker rm -f $(docker ps -a| awk 'NR>1 {print $1}')
    docker rmi -f $(docker images -q | uniq)
    ### これだと Local Volumes が残る
}

remove-local-volume-only() {
    docker volume rm -f $(docker volume ls | awk 'NR>1 {print $2}')
    ### Local Volumes のみを削除
}


### ALL Delete
docker system df && \
remove-container-images && \
remove-local-volume-only && \
docker system df

## ### Only Unused Delete
## docker system df && \
## remove-unused-data && \
## remove-local-volume-only
