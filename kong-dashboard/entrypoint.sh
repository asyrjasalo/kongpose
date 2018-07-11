#!/bin/sh

if [[ "$1" == "kong-dashboard" ]]; then
	./bin/kong-dashboard.js $@
fi

exec "$@"