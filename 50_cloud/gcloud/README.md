# gcloud

## Command

+ Create Docker image

```
docker build . --tag my_$(pwd | awk -F\/ '{print $NF}')
```

+ Run Google CLI using Docker images

```
docker run my_$(pwd | awk -F\/ '{print $NF}') help
```

+ Check Docker Container's LABEL

```
docker inspect my_$(pwd | awk -F\/ '{print $NF}') | jq .[].ContainerConfig.Labels
```

+ Lunch and Login Docker Container

```
docker run -it --entrypoint /bin/sh my_$(pwd | awk -F\/ '{print $NF}')
```

## Docker Hub

+ WIP
