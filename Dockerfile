FROM openjdk:11-jre-slim
COPY ./target/calci-app-1.0.0.jar /usr/local/apache2/conf/
EXPOSE 8080
CMD ["httpd-foreground"]
