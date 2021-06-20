FROM alpine:3.14.0 AS clone-code

RUN apk update && \
    apk add git && \
    mkdir -p /usr/local/src && \
    cd /usr/local/src && \
    git clone https://github.com/iganari/code-labo.git


FROM python:3.9.5-alpine3.13
# https://hub.docker.com/_/python?tab=tags&name=-alpine

RUN mkdir /app
WORKDIR /app
COPY --from=clone-code /usr/local/src/code-labo/python/web-sample-01/ .
RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3", "/app/main.py"]
