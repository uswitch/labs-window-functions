# How use to window functions in PostgreSQL

Provides a docker environment for playing with window functions in PostgreSQL, as explained [here](https://labs.uswitch.com/how-to-use-window-functions-in-postgresql/)

# Setup

## Start the Postgres instance

```
$ docker build -t uswitch-postgres .
$ docker run --name uswitch-postgres -e POSTGRES_PASSWORD=password -d uswitch-postgres
```

## Connect to it via PSQL

```
$ docker run -it --rm --link uswitch-postgres:postgres uswitch-postgres psql -h postgres -U postgres
```
