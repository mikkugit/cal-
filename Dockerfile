FROM openjdk:11-jre-slim
COPY calci-app-1.0.0.jar /app/
EXPOSE 8080
CMD ["java", "-jar", "/app/calci-app-1.0.0.jar"]
