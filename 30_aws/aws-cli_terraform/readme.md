# AWS CLI with Terraform


## Command

+ Create Docker images

```
docker build . --tag $(pwd | awk -F\/ '{print $NF}')
```

+ Run AWS CLI using Docker images

```
docker run $(pwd | awk -F\/ '{print $NF}') help
```

+ Login Docker Container

```
docker run -it --entrypoint /bin/sh $(pwd | awk -F\/ '{print $NF}')
```

## Docker Hub

+ WIP
