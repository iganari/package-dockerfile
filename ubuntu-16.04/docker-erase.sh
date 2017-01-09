#!/bin/bash

set -x

for i in `docker ps -a  | awk 'NR > 1 {print $1}'` ; do docker rm  -f ${i} ; done && docker ps -a
for i in `docker images | awk 'NR > 1 {print $3}'` ; do docker rmi -f ${i} ; done && docker images
