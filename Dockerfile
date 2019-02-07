FROM tomcat:8.0-alpine
MAINTAINER amaresh
COPY /root/amaresh/target/deploy.war /usr/local/tomcat/webapps/deploy.war
ADD /root/amareshtomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8090
CMD [ "catalina.sh" , "run"]

