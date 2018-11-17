# kongpose

Run [Kong API Gateway, Community Edition](https://konghq.com/kong-community-edition)
development setup with [docker-compose](https://docs.docker.com/compose).

Includes [Konga](https://github.com/pantsel/konga) as the web admin UI.

Originally based on [Yuan Cheung's docker-compose-kong](https://github.com/zhangyuan/docker-compose-kong), with the following additions:

- Use PostgreSQL 9.6 over 9.5, and Alpine Linux based image for smaller size
- Prefer `kong-migration` for initializing the database, rather than `setup.sh`
- Prefer Docker's own health checks, over using `wait-for-it.sh`
- Remove `bash` from built images, as it is not then needed
- Tidy up `docker-compose.yml`, removed `links` as they are not mandatory here
- Remove `start.sh` as `docker-compose restart` is a single command anyway
- Add MongoDB for storing Konga users
- Improve healthchecks for checking if database migrations have ran
- Add [example of creating an API](https://github.com/asyrjasalo/kongpose/tree/master/example)
- Upgrade Kong to 0.14.1
- Upgrade Kong Dashboard to latest, to support Kong >= 0.13
  - though commented out in `docker-compose.yml` as Konga is enough


## Usage

    docker-compose up

See [example of creating an API](https://github.com/asyrjasalo/kongpose/tree/master/example)


## Endpoints

### Kong

- Proxy: [http://localhost:8000](http://localhost:8000)
- Proxy w/ SSL: [https://localhost:8443](https://localhost:8443)

- Admin API: [http://localhost:8001](http://localhost:8001)
- Admin API w/ SSL: [https://localhost:8444](https://localhost:8444)

Kong uses PostgreSQL (9.6) with a persistent Docker volume for its credentials.

### Konga

- Admin UI: [http://localhost:1337](http://localhost:1337)

**admin login**: admin / adminadminadmin

**demo login**: demo / demodemodemo

After logging in as admin, create a new connection with URL `http://kong:8001`.

Konga uses MongoDB (4.0) with a persistent Docker volume for its credentials.
