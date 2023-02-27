FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=Admin123
ENV MYSQL_DATABASE=studentapp

COPY user.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]
