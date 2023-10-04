FROM openjdk:11-jre-slim
COPY ./target/calci-app-1.0.0.jar  /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["java", "-jar", "/app/calci-app-1.0.0.jar"]

