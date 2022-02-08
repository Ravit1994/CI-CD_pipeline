FROM tomcat:8.0-alpine
MAINTAINER Ravit Alaugh
RUN apk update
RUN apk add wget
RUN wget --user=admin --password=Password1234 -o /usr/local/tomcat/webapps/sampleapplication.war http://localhost:8082/ui/packages/gav:%2F%2Fcom.nagarro.devops-tools.devops:demosampleapplication/1.0.0-SNAPSHOT
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
