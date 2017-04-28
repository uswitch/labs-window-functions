#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    create table events(tick int, action varchar(10), name text);

    insert into events
         values (0, 'create', 'andy'), (1, 'update', 'andy'), (2, 'update', 'andy'),
                (0, 'create', 'beth'), (3, 'delete', 'andy'), (1, 'update', 'beth'),
                (2, 'update', 'beth'), (3, 'update', 'beth'), (4, 'update', 'beth'),
                (0, 'create', 'chris'), (1, 'update', 'chris');
EOSQL
