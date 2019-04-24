#!/bin/bash

set -x

BASEPATH=$(cd `dirname $0`; pwd)
docker run --rm -it -v ${BASEPATH}:/usr/local/iganari -w /opt --name ${1} ${1} /bin/bash
