# CentOS 6


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

+ Does Not created because of the old OS number :no_good:
