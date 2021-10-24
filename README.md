# `docker-commitlint`

> Runs `commitlint` on a docker container

## Summary

- [About](#about)
- [Installation](#installation)
- [Usage](#usage)

## About

The image use [`17.0-alpine3.14`](https://github.com/nodejs/docker-node/blob/cbbf60da587a7ca135b573f4c05810d88f04ace7/17/alpine3.13/Dockerfile)
as base image and includes the following tools (with their respective versions):

- [node 17.0.x](https://github.com/nodejs/node)
- [commitlint 13.2.1](https://github.com/conventional-changelog/commitlint)

## Installation

```
docker pull henriquehbr/commitlint
```

## Usage

In order to lint your commit messages, you must create a `commit-msg`
Git hook script, just like the one below:

```sh
#!/bin/sh

docker run --rm -i -v $PWD:/app henriquehbr/commitlint
```

- The `--rm` flag cleans up the container and removes the file system on exit
- The `-i` flag keeps stdin open, allowing us to redirect our commit message
file directly to `commitlint`
- A volume must be created between the project on the host and the `/app`
directory on the container in order to install shareable configs listed
on `package.json`
