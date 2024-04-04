FROM adoptopenjdk:18-jre-hotspot AS builder

WORKDIR /app

COPY build.gradle gradle.properties
RUN apk add --no-cache gradle

COPY . .

RUN gradle clean build

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]

EXPOSE 8080