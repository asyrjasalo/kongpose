# Kong

Setup Kong API Gateway with PostgreSQL as its database.
Includes both Kong Dashboard and Konga as a web UI.

Forked from [Yuan Cheung's original](https://github.com/zhangyuan/docker-compose-kong).


## Initialize PostgreSQL for Kong

    ./migrate_db

This is only needed once. The database is stored in `./data`.

## Run with docker-compose

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
