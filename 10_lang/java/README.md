# Java

## 概要

AdoptOpenJDK 版を使用

+ Docker Hub
  + https://hub.docker.com/_/adoptopenjdk
+ GitHub
  + https://github.com/AdoptOpenJDK

## Command

+ Create Docker image

```
docker build . --tag my_$(pwd | awk -F\/ '{print $NF}')
```

+ Check created Docker image

```
docker images | grep my_$(pwd | awk -F\/ '{print $NF}')
```

+ Check lang Version

```
docker run my_$(pwd | awk -F\/ '{print $NF}') java --version
```

+ Lunch and Login Docker Container

```
docker run -it --rm --entrypoint /bin/bash --name my_$(pwd | awk -F\/ '{print $NF}')_container my_$(pwd | awk -F\/ '{print $NF}')
```

## Docker Hub

+ WIP 
