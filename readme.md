# how to use

### 基本的にはcomposerでpullされるもの。

### pullする側のrepo

+ composer.json

```
{
  "name": "iganari/package",
  "type": "project",
  "repositories": [
    {
      "type": "package",
      "package": {
        "name": "package-dockerfile",
        "version": "0.0",
        "source": {
          "url": "ssh://git@bitbucket.org:hejda/package-dockerfile.git",
          "type": "git",
          "reference": "master"
        }
      }
    }
  ],
  "require": {
      "package-dockerfile": "0.0"
  },
  "config": {
    "vendor-dir": "opsfiles/docker/vendor/"
  }
}
```

### docker hubにログインする方法

+ ※ docker pullするために必要

```
$ docker login --username="igaguri" --password="igaguri7986"
```

### 起動中のコンテナの中に入る(docker exec)

+ 確認 --> 侵入

```
$ docker ps
CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS              PORTS                              NAMES
a6bc6ff7941b        elasticsearch:5.1.1   "/docker-entrypoint.s"   8 minutes ago       Up 8 minutes        9300/tcp, 0.0.0.0:9201->9200/tcp   es01
$ docker exec -it es01 /bin/bash
root@a6bc6ff7941b:/usr/share/elasticsearch#
```
