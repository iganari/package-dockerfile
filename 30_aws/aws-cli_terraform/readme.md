# AWS CLI + Terraform


## Command

+ Create Docker images

```
docker build . --tag $(pwd | awk -F\/ '{print $NF}')
```

+ Run AWS CLI using Docker images

```
docker run $(pwd | awk -F\/ '{print $NF}') help
```

## Docker Hub

+ WIP
