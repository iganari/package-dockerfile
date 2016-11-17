#!/bin/bash

set -x

### 基本的なdockerのimageを作るだけに留める

# まずはきれいにする
for i in `docker ps -a  | awk 'NR > 1 {print $1}'` ; do docker rm  -f ${i} ; done && docker ps -a
for i in `docker images | awk 'NR > 1 {print $3}'` ; do docker rmi -f ${i} ; done && docker images

# (pullとか)キャッシュせず、新たにDockerfileから作成する
docker build --no-cache .

# check docker imasge
# docker images

# 直前に作成したimageを立ち上げる(自動削除付き)
# docker run --rm -i -t $(docker images -q | head -1) /bin/bash

# ホストのディレクトリをマウントし、直前に作成したimageから立ち上げる
BASEPATH=$(cd `dirname $0`; pwd)
REPOPATH=$(cd ../../`dirname $0`; pwd)
echo ${REPOPATH}
docker run --rm -it -v ${REPOPATH}:/var/tmp/project $(docker images -q | head -1) /bin/bash
