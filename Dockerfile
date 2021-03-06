FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl jq && \
    curl -fL -o docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz && \
    tar xzvf docker.tgz docker/docker --strip-components 1 && \
    mv docker /usr/local/bin && \
    rm docker.tgz

COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh
