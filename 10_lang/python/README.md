# Python

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
docker run my_$(pwd | awk -F\/ '{print $NF}') python --version
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

+ WIP 
