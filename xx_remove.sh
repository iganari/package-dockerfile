#!/bin/bash

set -xu
set +e

force_soft_remove() {
    docker system prune -y
}

force_hard_remove() {
    docker stop $(docker ps | awk 'NR>1 {print $1}')
    docker rm -f $(docker ps -a| awk 'NR>1 {print $1}')
    docker rmi -f $(docker images -q | uniq)
}

force_complete_remove() {
    docker volume rm -f $(docker volume ls | awk 'NR>1 {print $2}')
}


# main
force_hard_remove
# force_soft_remove

docker system df

