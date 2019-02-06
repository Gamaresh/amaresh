FROM tomcat:8.0-alpine
MAINTAINER Venkatesh
COPY /var/lib/jenkins/workspace/TESTPROJECT1/target/deploy.war /usr/local/tomcat/webapps/deploy.war
ADD /var/lib/jenkins/workspace/TESTPROJECT1/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8090
CMD [ "catalina.sh" , "run"]

