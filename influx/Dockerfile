FROM influxdb:latest

RUN mkdir /docker-entrypoint-initdb.d
COPY database_setup.iql /docker-entrypoint-initdb.d/
