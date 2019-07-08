#!/bin/bash
# Stop all containers
docker rmi $(docker images -a -q)
