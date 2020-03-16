# Introduction

This repository contains the docker setup with all dependencies required to run the BASiCS workflow. The setup inherits from the `bioconductor/bioconductor_docker`.

**This repository is under development - not ready to be used**

# Useful commands

To clone this repository

```
git clone https://github.com/VallejosGroup/bioconductor_docker_basics.git
```

To build the docker image locally (assumes you are in the correct folder)

```
docker build . -t bioconductor_docker_basics:0.0.1
```

To run the docker image via Rstudio server. The code below ensures that the files in `$HOME/Documents/Github/Manuscripts/BASiCSWorkflow` are available via Rstudio.  

```
docker run -p 8787:8787 -v $HOME/Documents/Github/Manuscripts/BASiCSWorkflow:/home/rstudio/mycode -e PASSWORD=bioc bioconductor_docker_basics:0.0.1
```

Then access [http://localhost:8787](http://localhost:8787). Username: rstudio, password = bioc.

# Other commands

**Note: mostly copy/paste from bioconductor website**

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


