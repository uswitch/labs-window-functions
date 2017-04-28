# How use to window functions in PostgreSQL

Provides a docker environment for playing with window functions in PostgreSQL, as explained [here](https://labs.uswitch.com/how-to-use-window-functions-in-postgresql/)

# Setup

## Start the Postgres instance

```
$ docker build -t window-functions-example .
$ docker run --name window-functions-example -e POSTGRES_PASSWORD=mysecretpassword -d window-functions-example
```

## Connect to it via PSQL

```
$ docker run -it --rm --link window-functions-example:postgres window-functions-example psql -h postgres -U postgres
```
