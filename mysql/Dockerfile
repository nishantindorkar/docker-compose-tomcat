FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=Admin123
COPY user.sql /user.sql
ENV MYSQL_DATABASE=studentapp

# Import data from user.sql into the new database
RUN set -eux; \
    \
    # Start MySQL server and wait until it's ready
    # (we need to do this because the next command connects to the MySQL server)
    service mysql start; \
    sleep 10; \
    \
    # Load the initial data into the new database
    mysql -h database-1.ccbjod0ijwud.us-east-1.rds.amazonaws.com -u root -e "CREATE DATABASE $MYSQL_DATABASE"; \
    mysql -h database-1.ccbjod0ijwud.us-east-1.rds.amazonaws.com -u root $MYSQL_DATABASE < /user.sql; \
    \
    # Stop the MySQL server
    service mysql stop

# Expose the default MySQL port
EXPOSE 3306

# Start MySQL server
CMD ["mysqld"]


# RUN mysql -h database-1.ccbjod0ijwud.us-east-1.rds.amazonaws.com -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE studentapp"
# RUN mysql -h database-1.ccbjod0ijwud.us-east-1.rds.amazonaws.com -u root -p${MYSQL_ROOT_PASSWORD} studentapp < /user.sql
# EXPOSE 3306
# CMD ["mysqld"]