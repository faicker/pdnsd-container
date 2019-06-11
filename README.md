[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/faicker/pdnsd.svg)](https://hub.docker.com/r/faicker/pdnsd)
[![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/faicker/pdnsd/latest.svg)](https://hub.docker.com/r/faicker/pdnsd)
[![Docker Pulls](https://img.shields.io/docker/pulls/faicker/pdnsd.svg)](https://hub.docker.com/r/faicker/pdnsd)

pdnsd
====

pdnsd alpine docker image with the same uid/gid of process and config file fixed.

Changed the uid/gid before pdnsd running and recover after pdnsd stopped.

### Problem

* Can't recover with ```docker kill``` command.
* Works well with docker-compose.
