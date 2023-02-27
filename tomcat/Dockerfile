FROM tomcat:latest

EXPOSE 8080

COPY ./student.war /usr/local/tomcat/webapps/student.war
COPY ./mysql-connector.jar /usr/local/tomcat/lib/mysql-connector.jar
COPY ./data.txt /usr/local/tomcat/

ARG CONTEXT_LINE_NUMBER=21

RUN echo "CONTEXT_LINE_NUMBER: ${CONTEXT_LINE_NUMBER}"
RUN ls -l /usr/local/tomcat/
RUN ls -l /usr/local/tomcat/conf/
RUN cat /usr/local/tomcat/conf/context.xml
RUN cat /usr/local/tomcat/data.txt
RUN sed -i "${CONTEXT_LINE_NUMBER}r /usr/local/tomcat/data.txt" /usr/local/tomcat/conf/context.xml
