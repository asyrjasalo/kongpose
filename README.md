# Kong

Setup Kong API Gateway with PostgreSQL as its database.
Includes both Kong Dashboard and Konga as a web UI.

Requires Docker and docker-compose.


## Usage

### Migrate DB (only needed once)

    ./migrate_db

### Run with docker-compose

    docker-compose up


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
