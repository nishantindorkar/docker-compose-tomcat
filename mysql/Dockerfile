FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=Admin123
ENV MYSQL_DATABASE=studentapp

COPY user.sql /docker-entrypoint-initdb.d/user.sql


RUN set -eux; \
    service mysql start; \
    sleep 10; \
    \
    mysql -h database-2.ccbjod0ijwud.us-east-1.rds.amazonaws.com -u root -e "CREATE DATABASE $MYSQL_DATABASE"; \
    mysql -h database-2.ccbjod0ijwud.us-east-1.rds.amazonaws.com -u root $MYSQL_DATABASE < /user.sql; \
    \
    service mysql stop
EXPOSE 3306
CMD ["mysqld"]
