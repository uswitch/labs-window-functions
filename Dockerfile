FROM postgres:9.6.2-alpine

ADD init-user-db.sh /docker-entrypoint-initdb.d/init-user-db.sh
