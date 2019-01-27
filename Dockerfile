FROM tomcat:8.0-alpine
MAINTAINER Venkatesh
COPY target/deploy.war /usr/local/tomcat/webapps/deploy.war
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080
CMD [ "catalina.sh" , "run"]

