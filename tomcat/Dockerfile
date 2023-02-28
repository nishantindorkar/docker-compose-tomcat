FROM ubuntu:latest

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN apt update -y && apt upgrade -y
RUN apt-get -y install openjdk-8-jdk
RUN apt install curl -y
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.86/bin/apache-tomcat-8.5.86.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.86/* /opt/tomcat/.
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
