# docker-compose-kong

Run Kong API Gateway with PostgreSQL as its database.
Includes both Kong Dashboard and Konga as a web UI.

Forked from [Yuan Cheung's original](https://github.com/zhangyuan/docker-compose-kong). Additions in this repository:

- Use PostgreSQL 9.6 over 9.5, and use the Alpine Linux based image for size
- Prefer Docker's own health checks over using `wait-for-it.sh`
- Tidy up `docker-compose.yml`: `links` between containers are not required
- Remove `start.sh`, as using `docker-compose up/restart` is one command anyway


## Initialize database

    ./migrate_db

This is only required once, as the database data is persisted the host,
via a volume in `./data/kong-database`.

## Run services

    docker-compose up -d


## URLs

### Kong

- Gateway: [http://localhost:8000](http://localhost:8000)
- Gateway SSL: [https://localhost:8443](https://localhost:8443)
- Admin: [http://localhost:8001](http://localhost:8001)
- Admin SSL: [https://localhost:8444](https://localhost:8444)

### Kong dashboard

- Web UI: [http://localhost:8080](http://localhost:8080)

### Konga

- Web UI: [http://localhost:1337](http://localhost:1337)

**admin user**: admin / adminadminadmin

**demo user**: demo / demodemodemo

## TODO

- Add [UID-GID-mapper](https://github.com/asyrjasalo/rfdocker/tree/master/docker) to run as non-root (and have `./data` with correct permissions)
