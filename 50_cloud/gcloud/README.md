# gcloud

## Version

gcloud Version `374.0.0`

## Command

+ Create Docker image

```
docker build . --tag my_$(pwd | awk -F\/ '{print $NF}')
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
