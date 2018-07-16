# docker-compose-kong

Run Kong API Gateway with PostgreSQL as its database.
Includes both [Kong Dashboard](https://github.com/PGBI/kong-dashboard) and
[Konga](https://github.com/pantsel/konga) as web admin UIs.

Forked from [Yuan Cheung's docker-compose-kong](https://github.com/zhangyuan/docker-compose-kong). The additions in this repository:

- Use PostgreSQL 9.6 over 9.5, and Alpine Linux based image for smaller size
- Prefer `kong-migration` for initializing the database, rather than `setup.sh`
- Prefer Docker's own health checks, over using `wait-for-it.sh`
- Remove `bash` from built images, as it is not then needed
- Tidy up `docker-compose.yml`, `links` between containers are not required
- Remove `start.sh` as `docker-compose restart` is a single command anyway


## Usage

    docker-compose up

The database data is persisted at the host, in `./data/kong-database`.


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

- [host UID+GID mapper](https://github.com/asyrjasalo/rfdocker/tree/master/docker)
to run services inside the containers as non-root, and to have `./data`
on the host Linux distros with correct ownership.
