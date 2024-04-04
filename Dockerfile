FROM openjdk:18-jdk

# Create app directory
WORKDIR /app

# Copy Gradle wrapper and application code
COPY build.gradle wrapper/*

# Build with Gradle (assuming wrapper is present)
RUN ./gradlew clean build

# Copy built JAR file
COPY target/*.jar app.jar

# Set optional environment variable
ENV JAVA_SECURITY_EGD=/dev/./urandom

# Entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
