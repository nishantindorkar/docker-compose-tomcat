FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=Admin123
COPY mysql-dump/user.sql /user.sql
RUN mysql -h database-1.ccbjod0ijwud.us-east-1.rds.amazonaws.com -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE studentapp"
RUN mysql -h database-1.ccbjod0ijwud.us-east-1.rds.amazonaws.com -u root -p${MYSQL_ROOT_PASSWORD} studentapp < /user.sql
