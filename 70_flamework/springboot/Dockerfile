ARG _TAG=11.0.10_9-jdk-hotspot-focal
FROM adoptopenjdk:${_TAG} as builder
# https://hub.docker.com/_/adoptopenjdk
# https://github.com/docker-library/docs/blob/master/adoptopenjdk/README.md#supported-tags-and-respective-dockerfile-links


### gradle build
ADD ./demo /usr/local/src/
RUN cd /usr/local/src/ && ./gradlew build


### Web Container
FROM adoptopenjdk:${_TAG}
COPY --from=builder /usr/local/src/build/libs/demo-0.0.1-SNAPSHOT.jar /usr/local/src
ENTRYPOINT [ "java", "-jar", "/usr/local/src/demo-0.0.1-SNAPSHOT.jar" ]
