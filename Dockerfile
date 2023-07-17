FROM tomcat:9-jdk11
RUN rm -rf /usr/local/tomcat/webapps/ROOT
WORKDIR .
COPY ./target/java-maven-app-1.1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]