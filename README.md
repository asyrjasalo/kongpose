# kongpose

Run [Kong API Gateway](https://konghq.com/kong-community-edition) dev setup
with docker-compose. PostgreSQL 9.6 as the database with a Docker volume.

Includes both [Kong Dashboard](https://github.com/PGBI/kong-dashboard) and
[Konga](https://github.com/pantsel/konga) as web admin UIs.

Based on [Yuan Cheung's docker-compose-kong](https://github.com/zhangyuan/docker-compose-kong), with the following additions:

- Use PostgreSQL 9.6 over 9.5, and Alpine Linux based image for smaller size
- Prefer `kong-migration` for initializing the database, rather than `setup.sh`
- Prefer Docker's own health checks, over using `wait-for-it.sh`
- Remove `bash` from built images, as it is not then needed
- Tidy up `docker-compose.yml`, removed `links` as they are not mandatory here
- Remove `start.sh` as `docker-compose restart` is a single command anyway
- Add MongoDB for storing Konga users
- Improve healthchecks for checking if database migrations have ran
- Add [example of creating an API](https://github.com/asyrjasalo/kongpose/tree/master/example)


## Usage

    docker-compose up

See [example of creating an API](https://github.com/asyrjasalo/kongpose/tree/master/example)


## Endpoints

### Kong

- Proxy: [http://localhost:8000](http://localhost:8000)
- Proxy w/ SSL: [https://localhost:8443](https://localhost:8443)

- Admin API: [http://localhost:8001](http://localhost:8001)
- Admin API w/ SSL: [https://localhost:8444](https://localhost:8444)


### Kong dashboard

[http://localhost:1336](http://localhost:1336)


### Konga

[http://localhost:1337](http://localhost:1337)

**admin login**: admin / adminadminadmin

**demo login**: demo / demodemodemo

Konga uses MongoDB for storing its credentials.
