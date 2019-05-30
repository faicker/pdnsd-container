pdnsd
====

pdnsd alpine docker image with the same uid/gid of process and config file fixed.

Changed the uid/gid before pdnsd running and recover after pdnsd stopped.

### Problem

* Can't recover with ```docker kill``` command.
* Works well with docker-compose.
