#!/bin/bash

set -xeu

docker stop $(docker ps | awk 'NR>1 {print $1}')
docker rm -f $(docker ps -a| awk 'NR>1 {print $1}')
docker rmi -f $(docker images -q | uniq)
