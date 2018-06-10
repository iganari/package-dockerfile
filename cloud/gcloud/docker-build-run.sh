#!/bin/bash

set -xeu

_I_TAG='cld-gcloud'

set +eu
docker rmi ${_I_TAG}
set -eu

docker build --no-cache . -t ${_I_TAG}

BASEPATH=$(cd `dirname $0`; pwd)

docker run --rm \
           -it \
           -v ${BASEPATH}:/usr/local/iganari \
           -w /opt \
           --name ${_I_TAG} \
           ${_I_TAG} /bin/bash
