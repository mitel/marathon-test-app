#!/bin/sh

# https://medium.com/@x_cray/how-we-cook-mesos-db54814deb11#.xbxf7u7xh
# containerized application can reliably refer to “dockerhost” 
# hostname when it needs to access the Docker host machine

set -e

DOCKERHOST=$(ip route show 0.0.0.0/0 | grep -Eo 'via \S+' | awk '{ print $2 }')
echo "$DOCKERHOST dockerhost" >> /etc/hosts

exec "$@"
