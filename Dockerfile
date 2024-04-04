FROM openjdk:18-jdk

# Create app directory
WORKDIR /app

COPY build/libs/laboratorio1.jar app.jar

# Entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Expose port 8080
EXPOSE 8080
