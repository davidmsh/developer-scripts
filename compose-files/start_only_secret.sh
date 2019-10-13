#!/bin/bash
FLAGS="-d --no-deps"

docker-compose up $FLAGS volume
sleep 1

docker-compose up $FLAGS consul
sleep 3

docker-compose up $FLAGS config-seed
sleep 3

docker-compose up $FLAGS vault
sleep 3

docker-compose up $FLAGS vault-worker
sleep 3
