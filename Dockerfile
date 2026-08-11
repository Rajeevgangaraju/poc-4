FROM tomcat:10.1-jdk21-openjdk-slim
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/color-app.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8082
CMD ["catalina.sh", "run"]
