#!/usr/bin/env bash

set -e

docker-compose up -d
sleep 30
docker-compose run kong kong migrations up
docker-compose down
