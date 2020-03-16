# Introduction

This repository contains the docker setup with all dependencies required to run BASiCS. The setup inherits from the `bioconductor/bioconductor_docker`.

**This repository is under development - not ready to be used**

# Useful commands

**Note: mostly copy/paste from Bioconductor website**

To clone this repository

```
git clone https://github.com/VallejosGroup/bioconductor_docker_basics.git
```

To build the docker image locally (from the relevant folder)

```
docker build . -t VallejosGroup/bioconductor_docker_basics:0.0.1
```

To check available images

```
docker image ls
docker images
```

To list all running containers

```
docker ps
```

To list all available containers

```
docker ps -a
```

To resume a stopped container

```
docker start <CONTAINER ID>
```

Shell into a running container

```
docker exec -it <CONTAINER ID> /bin/bash
```

Shutdown container

```
docker stop <CONTAINER ID>
```

Delete container

```
docker rm <CONTAINER ID>
```

Delete image

```
docker rmi bioconductor/bioconductor_docker:devel
```


# Useful links

- [Docker containers for Bioconductor](https://www.bioconductor.org/help/docker/)
- [Best practices and standards for Bioconductor Docker Images](https://github.com/Bioconductor/bioconductor_docker/blob/master/best_practices.md)


