#!/bin/bash
FLAGS="-d --no-deps"

docker-compose up $FLAGS kong-db
# start up backend database for API gateway
sleep 3

docker-compose up $FLAGS kong-migrations
# initialize the backend database for API gateway
sleep 3

docker-compose up $FLAGS kong
# start up KONG the major component of API gateway
sleep 3

#docker-compose up $FLAGS edgex-proxy
# initialize KONG, configure proxy routes, apply certificates to routes, and enable various authentication/ACL features.o
sleep 3

