#!/bin/bash

set -xu
set +e

force_hard_remove(){
    docker stop $(docker ps | awk 'NR>1 {print $1}')
    docker rm -f $(docker ps -a| awk 'NR>1 {print $1}')
    docker rmi -f $(docker images -q | uniq)
}

force_soft_remove(){
    docker system prune -y


}

# main
force_hard_remove
# force_soft_remove

docker system df

