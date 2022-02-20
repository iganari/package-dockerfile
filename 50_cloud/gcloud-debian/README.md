# [WIP] gcloud ubuntu

## Command

+ Create Docker image

```
docker build . --tag my_$(pwd | awk -F\/ '{print $NF}')
```

+ Run Google CLI using Docker images

```
docker run my_$(pwd | awk -F\/ '{print $NF}') /bin/bash -c 'gcloud --help'
```

+ Lunch and Login Docker Container

```
docker run -it --entrypoint /bin/bash my_$(pwd | awk -F\/ '{print $NF}')
```

## Docker Hub

https://hub.docker.com/repository/docker/iganarix/cld-gcloud-debian
