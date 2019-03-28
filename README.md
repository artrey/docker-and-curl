# Docker with curl

[![Docker Pulls](https://img.shields.io/docker/pulls/artrey/docker-and-curl.svg)](https://hub.docker.com/r/artrey/docker-and-curl/)
[![GitHub issues](https://img.shields.io/github/issues/artrey/docker-and-curl.svg)](https://github.com/artrey/docker-and-curl/issues)
[![GitHub stars](https://img.shields.io/github/stars/artrey/docker-and-curl.svg?style=social&label=Star)](https://github.com/artrey/docker-and-curl)

This docker image installs curl on top of the `docker` image.
This is very useful for CI pipelines, which leverage "Docker in Docker".

## Usage instructions for GitLab CI

You may use it like this in your `.gitlab-ci.yml` file.

```yaml
image: artrey/docker-and-curl:stable

services:
  - docker:dind

before_script:
  - docker info
  - curl -V
```
