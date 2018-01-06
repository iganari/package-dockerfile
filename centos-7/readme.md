[![](https://images.microbadger.com/badges/image/igaguri/base-centos-7.svg)](https://microbadger.com/images/igaguri/base-centos-7 "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/igaguri/base-centos-7.svg)](https://microbadger.com/images/igaguri/base-centos-7 "Get your own version badge on microbadger.com")

# centos-7

### 内容

CentOS 7 ベースのDockerコンテナ

### 新しく作る場合

```
$ sh docker-build-run.sh
```

### docker hub

+ URL

https://hub.docker.com/r/igaguri/base-centos-7/

+ Docker Pull Command

```
$ docker pull igaguri/base-centos-7
```

### git

+ git 2.x

```
# git --version
git version 2.15.0-rc1
```

### Python

+ Python 2.x

```
# python --version
Python 2.7.5

# pip --version
pip 9.0.1 from /usr/lib/python2.7/site-packages (python 2.7)
```

+ Python 3.x

```
# python3.5 --version
Python 3.5.4

# pip3.5 --version
pip 9.0.1 from /usr/lib/python3.5/site-packages (python 3.5)
```

+ 俯瞰

```
# ls -l /usr/bin/python*
lrwxrwxrwx 1 root root /usr/bin/python -> python2
lrwxrwxrwx 1 root root /usr/bin/python-config -> python2-config
lrwxrwxrwx 1 root root /usr/bin/python2 -> python2.7
lrwxrwxrwx 1 root root /usr/bin/python2-config -> python2.7-config
-rwxr-xr-x 1 root root /usr/bin/python2.7
-rwxr-xr-x 1 root root /usr/bin/python2.7-config
-rwxr-xr-x 2 root root /usr/bin/python3.5
lrwxrwxrwx 1 root root /usr/bin/python3.5-config -> /usr/bin/python3.5m-config
-rwxr-xr-x 2 root root /usr/bin/python3.5m
-rwxr-xr-x 1 root root /usr/bin/python3.5m-config
-rwxr-xr-x 1 root root /usr/bin/python3.5m-x86_64-config
```

