ARG DOCKER_IMAGE=docker
ARG DOCKER_VERSION=stable
FROM ${DOCKER_IMAGE}:${DOCKER_VERSION}

ARG DOCKER_IMAGE
ARG DOCKER_VERSION

RUN apk add --no-cache curl

LABEL \
  maintainer="Alexander Ivanov <oz.sasha.ivanov@gmail.com>" \
  description="This docker image installs curl on top of the docker image." \
  licenses="MIT" \
  source="https://github.com/artrey/docker-and-curl" \
  title="Docker image with installed curl" \
  version="${DOCKER_IMAGE}:${DOCKER_VERSION} with curl"
