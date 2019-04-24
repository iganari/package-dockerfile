#!/bin/bash

set -xeu

### 基本的なdockerのimageを作るだけに留める

_TAG='c6-6.9'

# まずはきれいにする
set +eu
docker rmi ${_TAG}

set -eu

# (pullとか)キャッシュせず、新たにDockerfileから作成する
docker build --no-cache .

docker tag $(docker images -q | head -1) ${_TAG}
sh ./docker-run.sh ${_TAG}
