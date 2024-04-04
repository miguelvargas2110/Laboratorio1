FROM openjdk:18-jdk

# Create app directory
WORKDIR /app

# Copy built JAR file
COPY target/*.jar app.jar

# Entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
