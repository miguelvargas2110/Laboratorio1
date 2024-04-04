FROM openjdk:18-jdk
VOLUME /tmp
ADD target/lab1-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]