# Docker and Actions for Xdebug in PHP

[![GitHub Release](https://img.shields.io/github/tag/MilesChou/docker-xdebug.svg)](https://github.com/MilesChou/docker-xdebug/releases)
[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](LICENSE)
[![DockerHub Stars](https://img.shields.io/docker/stars/mileschou/xdebug.svg)](https://hub.docker.com/r/mileschou/xdebug/)
[![DockerHub Pulls](https://img.shields.io/docker/pulls/mileschou/xdebug.svg)](https://hub.docker.com/r/mileschou/xdebug/)

![Testing](https://github.com/MilesChou/docker-xdebug/workflows/Testing/badge.svg)
![Publish Docker](https://github.com/MilesChou/docker-xdebug/workflows/Publish%20Docker/badge.svg)

Docker and GitHub Actions for [Xdebug](https://xdebug.org/).

# Usage for Docker

See [Docker Hub](https://hub.docker.com/r/mileschou/xdebug/) for download Docker Image.

The Docker Image with Xdebug for GitLab CI / Drone CI / Dapper / GitHub Actions to test.

# Usage for Actions

See [GitHub Marketplace](https://github.com/marketplace/actions/xdebug-action) for more information.

```yaml
- name: Xdebug Action
  uses: MilesChou/docker-xdebug@master
```

## Supported tags and respective `Dockerfile` links

* [`7.4` (7.4/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.4/Dockerfile)
* [`7.4-apache` (7.4/apache/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.4/apache/Dockerfile)
* [`7.3` (7.3/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.3/Dockerfile)
* [`7.3-apache` (7.3/apache/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.3/apache/Dockerfile)
* [`7.2` (7.2/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.2/Dockerfile)
* [`7.2-apache` (7.2/apache/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.2/apache/Dockerfile)
* [`7.1` (7.1/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.1/Dockerfile)
* [`7.1-apache` (7.1/apache/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.1/apache/Dockerfile)
* [`7.0` (7.0/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.0/Dockerfile)
* [`7.0-apache` (7.0/apache/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/7.0/apache/Dockerfile)
* [`5.6` (5.6/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/5.6/Dockerfile)
* [`5.6-apache` (5.6/apache/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/5.6/apache/Dockerfile)
* [`5.5` (5.5/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/5.5/Dockerfile)
* [`5.5-apache` (5.5/apache/Dockerfile)](https://github.com/MilesChou/docker-xdebug/blob/master/5.5/apache/Dockerfile)

## Versions and variants

* PHP 7.1+ with Xdebug latest
* PHP 7.0 with Xdebug 2.9.0
* PHP 5.x with Xdebug 2.5.5
