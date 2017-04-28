# How use to window functions in PostgreSQL

Provides a docker environment for playing with window functions in PostgreSQL, as explained [here](https://labs.uswitch.com/how-to-use-window-functions-in-postgresql/)

# Setup

## Start the Postgres instance

```
$ docker build -t uswitch-window-functions .
$ docker run --name postgres-example -e POSTGRES_PASSWORD=password -d uswitch-window-functions
```

## Connect to it via PSQL

```
$ docker run -it --rm --link postgres-example:postgres uswitch-window-functions psql -h postgres -U postgres
```
