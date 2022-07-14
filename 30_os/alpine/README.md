# Alpine

## Version

[OS Version](./_os_version)

## Command

+ Create Docker image

```
docker build . --tag my_$(pwd | awk -F\/ '{print $NF}')
```

+ Check created Docker image

```
docker images | grep my_$(pwd | awk -F\/ '{print $NF}')
```

+ Check OS Version

```
docker run my_$(pwd | awk -F\/ '{print $NF}') cat /etc/os-release
```

+ Check Docker Container's LABEL

```
docker inspect my_$(pwd | awk -F\/ '{print $NF}') | jq .[].ContainerConfig.Labels
```

+ Lunch and Login Docker Container

```
docker run -it --rm --entrypoint /bin/sh --name my_$(pwd | awk -F\/ '{print $NF}')_container my_$(pwd | awk -F\/ '{print $NF}')
```

## Docker Hub

+ https://cloud.docker.com/repository/docker/iganarix/os-alpine
