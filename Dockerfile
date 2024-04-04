FROM openjdk:18-jdk

# Create app directory
WORKDIR /app

# Build with Gradle (assuming wrapper is present)
RUN gradle clean build

# Copy built JAR file
COPY target/*.jar app.jar

# Set optional environment variable
ENV JAVA_SECURITY_EGD=/dev/./urandom

# Entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
