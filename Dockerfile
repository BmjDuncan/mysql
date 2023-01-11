FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=goose

COPY ./database.sql /docker-entrypoint-initdb.d/
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf
EXPOSE 3306
