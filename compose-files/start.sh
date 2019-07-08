#!/bin/bash
FLAGS="-d --no-deps"

docker-compose up $FLAGS consul
sleep 3

docker-compose up $FLAGS config-seed
sleep 3

docker-compose up $FLAGS volume
sleep 3

docker-compose up $FLAGS redis
sleep 7 

docker-compose up $FLAGS logging
sleep 3

docker-compose up $FLAGS data
sleep 3

docker-compose up $FLAGS metadata
sleep 3

docker-compose up $FLAGS command
sleep 3

docker-compose up $FLAGS device-virtual
