#!/usr/bin/env bash

set -e

docker-compose down
rm -rf data/
docker-compose up -d

sleep 10

docker-compose run kong kong migrations up

sleep 10

docker-compose up -d

curl http://localhost:9000
