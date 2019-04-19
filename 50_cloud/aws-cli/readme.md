# AWS CLI


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

## Docker Hub Description

+ https://cloud.docker.com/repository/docker/iganarix/cld-aws-cli

+ GitHub
    + WIP
+ Docker Hub
    + [![dockeri.co](https://dockeri.co/image/iganarix/cld-aws-cli)](https://hub.docker.com/r/iganarix/cld-aws-cli)
+ MicroBadger
    + [![](https://images.microbadger.com/badges/image/iganarix/cld-aws-cli.svg)](https://microbadger.com/images/iganarix/cld-aws-cli "Get your own image badge on microbadger.com")
    + [![](https://images.microbadger.com/badges/version/iganarix/cld-aws-cli.svg)](https://microbadger.com/images/iganarix/cld-aws-cli "Get your own version badge on microbadger.com")
