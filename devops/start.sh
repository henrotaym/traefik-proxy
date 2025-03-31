#!/usr/bin/env bash

accessibleNetwork=$(docker network ls | grep accessible)
if [ ${#accessibleNetwork} == 0 ]
    then docker network create accessible
fi
docker compose up