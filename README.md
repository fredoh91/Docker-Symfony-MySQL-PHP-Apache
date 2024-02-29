
# Docker-Symfony-MySQL-PHP/Apache

a basic directories structure with Dockfile and docker-compose.




## Installation

### build and running container

copy the directory and file tree, then run :

```bash
  docker build .
```

then when the build is finished:

```bash
  docker compose up -d
```

### creating new symfony project


```bash
  symfony new --webapp SymfonyProjectName/
```


## different files/directory

### Dockerfile
To create an image with PHP 8.2 (for running a synfony 7.x project), and the whole tools to use a symfony projet (composer, node, npm, symfony cli).
The following apache.conf file is copied inside this buiding image.

### apache.conf
These apache.conf file is copied inside this buiding image for running a symfony project. this is the standard configuration for apache.

### docker-compose.yml
These file run 3 containers :
- php :
run the previous building image.
- db : 
run MySQL 8.x for using in symfony
- phpma :
run PHP myadmin.

### php

In these directory, a simple index.php file, with phpinfo() function for testing the contener.
Is it possible to activate this directory un the volumes php section of the Docker-compose file.
