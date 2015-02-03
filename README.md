# Introduction

Dockerfile to build a Simple OPDS server docker image.
http://www.sopds.ru

# Installation

Pull the latest version of the image from the docker index. This is the recommended method of installation as it is easier to update image in the future. These builds are performed by the **Docker Trusted Build** service.

```
docker pull allion/sopds:latest
```

Alternately you can build the image yourself.

```
git clone https://github.com/allion/docker-sopds.git
cd docker-sopds
docker build -t="$USER/sopds" .
```

# Quick Start

Run the image

```
docker run --name=sopds -d \
-p 8081:8081 \
-v /path/to/library:/library \
allion/sopds:latest
```

This will start the sopds server and you should now be able to browse the content on port 8081.


# Scan library

For debugging and maintenance purposes you may want access the containers shell. If you are using docker version `1.3.0` or higher you can access a running containers shell using `docker exec` command.

```bash
docker exec -it sopds bash
/sopds-master/py/sopds-scan.py &
```
