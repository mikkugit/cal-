FROM httpd:latest
COPY ./target/calci-app-1.0.0.jar /usr/local/apache2/htdocs/
EXPOSE 80
CMD ["httpd-foreground"]
