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

# docker起動
# --rm: コンテナからexitした後に自動でコンテナを削除してくれる
# docker run --rm -i -t ubuntu /bin/bash

# 直前に作成したimageを立ち上げる(自動削除付き)
# docker run --rm -i -t $(docker images -q | head -1) /bin/bash

# ホストのディレクトリをマウントする
BASEPATH=$(cd `dirname $0`; pwd)
REPOPATH=$(cd ../../`dirname $0`; pwd)
echo ${REPOPATH}
# docker run --rm -it $(docker images -q | head -1)  /bin/bash
docker run --rm -it -v ${REPOPATH}:/var/tmp/project $(docker images -q | head -1) /bin/bash
# docker run --rm -it $(docker images -q | head -1) -v ${REPOPATH}:/var/tmp/ /bin/bash

# dockerをバックグランドで起動
# docker run -d -it $(docker images -q | head -1)

# 起動しているコンテナに接続
# docker attach $(docker ps | awk 'NR > 1 { print $1}')

# 作成するイメージの名前
IMAGE_NAME='joke-command'
# コンテナからイメージを作る
# docker commit $(docker ps | awk 'NR > 1 { print $1}') ${IMAGE_NAME}_$(date "+%Y-%m-%d-%H%M")

docker images
# echo "docker run --rm -i -t ${IMAGE_NAME} /usr/bin/cmatrix"
