FROM postgres:latest

USER postgres
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD PostgreSQL16.12
ENV POSTGRES_DB qcm

COPY ./create_database.sql /docker-entrypoint-initdb.d/.
