FROM openjdk:21-jdk-alpine

# Create app directory
WORKDIR /app

COPY build/libs/laboratorio1.jar app.jar

# Entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Exponer el puerto especificado por la variable de entorno PORT
EXPOSE 8080
