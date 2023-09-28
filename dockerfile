FROM httpd:2.4
COPY ./target/calci-app-1.0.0.jar /usr/local/apache2/conf/
EXPOSE 8080
CMD ["httpd-foreground"]
