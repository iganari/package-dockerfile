# gcloud

## Version

gcloud Version -> [_gcloud_version](./_gcloud_version)

## Command

+ Create Docker image

```
export _gcloud_version=$(cat _gcloud_version | head -n 1)

sed -e "s/_GCLOUD_VERSION/${_gcloud_version}/g" Dockerfile-alpine.tpl > Dockerfile-alpine
sed -e "s/_GCLOUD_VERSION/${_gcloud_version}/g" Dockerfile-debian.tpl > Dockerfile-debian

docker build . --file Dockerfile-alpine --tag iganarix/cld-gcloud:${_gcloud_version}-alpine
docker build . --file Dockerfile-debian --tag iganarix/cld-gcloud:${_gcloud_version}-debian
```

+ Run Google CLI using Docker images

```
docker run my_$(pwd | awk -F\/ '{print $NF}') gloud help
```

+ Lunch and Login Docker Container

```
docker run -it --entrypoint /bin/sh my_$(pwd | awk -F\/ '{print $NF}')
```

## Docker Hub

+ https://hub.docker.com/r/iganarix/cld-gcloud/dockerfile
