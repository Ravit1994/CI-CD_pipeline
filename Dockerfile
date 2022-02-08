FROM tomcat:8.0-alpine
MAINTAINER Ravit Alaugh
RUN apk update
RUN apk add wget
RUN wget --user=admin --password=Password1234 -o /usr/local/tomcat/webapps/sampleapplication.war http://localhost:8081/artifactory
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
