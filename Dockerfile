FROM ubuntu:14.04
RUN apt-get -y -q update
RUN apt-get install -y vim

FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=goose

COPY ./database.sql /docker-entrypoint-initdb.d/
EXPOSE 3306
