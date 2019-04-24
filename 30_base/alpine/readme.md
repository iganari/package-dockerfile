# Alpine


## Command

+ Create Docker images

```
docker build . --tag my$(pwd | awk -F\/ '{print $NF}')
```

+ Run AWS CLI using Docker images

```
docker run my$(pwd | awk -F\/ '{print $NF}') help
```

+ Login Docker Container

```
docker run -it --entrypoint /bin/sh my$(pwd | awk -F\/ '{print $NF}')
```

## Docker Hub

+ WIP
