FROM tomcat:9-jre9 
COPY ./docker-webapp.war /usr/local/tomcat/webapps
