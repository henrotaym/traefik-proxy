#!/usr/bin/env bash

containers=$(docker ps -a -q)
if [ ${#containers} != 0 ]
    then docker stop $containers
fi
docker system prune -f