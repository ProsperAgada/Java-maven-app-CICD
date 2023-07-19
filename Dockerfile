FROM tomcat:latest
RUN cp -R /usr/local/tomcat webpp.dist/* /usr/local/tomcatwebapps
WORKDIR .
COPY ./target/java-maven-app-1.1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]