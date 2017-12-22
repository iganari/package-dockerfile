#!/bin/bash

set -xeu

### 基本的なdockerのimageを作るだけに留める

_I_TAG='c7-1708'

# まずはきれいにする
set +eu
docker rmi ${_I_TAG}

set -eu

# (pullとか)キャッシュせず、新たにDockerfileから作成する
docker build --no-cache . -t ${_I_TAG}

sh ./docker-run.sh ${_I_TAG}
