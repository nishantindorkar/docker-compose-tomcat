FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=Admin123
ENV MYSQL_DATABASE=studentapp
ENV MYSQL_USER=admin

COPY students.sql /docker-entrypoint-initdb.d/
COPY user.sql /docker-entrypoint-initdb.d/user/

EXPOSE 3306

CMD ["mysqld"]
