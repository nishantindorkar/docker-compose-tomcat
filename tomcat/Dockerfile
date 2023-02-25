FROM tomcat:latest
EXPOSE 8080
COPY target/student.war /usr/local/tomcat/webapps/student.war
COPY target/mysql-connector.jar /usr/local/tomcat/lib/mysql-connector.jar
COPY ./data.txt /usr/local/tomcat/

ARG CONTEXT_LINE_NUMBER=21
RUN sed -i "${CONTEXT_LINE_NUMBER}r /data.txt" /usr/local/tomcat/conf/context.xml
