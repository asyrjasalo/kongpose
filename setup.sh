#!/usr/bin/env bash

set -e

docker-compose down
rm -rf data/

docker-compose run kong kong migrations up & 

sleep 30

docker-compose run kong kong migrations up

docker-compose down