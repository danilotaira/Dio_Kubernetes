# FROM openjdk:15-alpine
FROM openjdk:11.0.10-slim

RUN mkdir /usr/myapp

COPY target/java-kubernetes.jar /usr/myapp/app.jar
WORKDIR /usr/myapp

EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java --enable-preview $JAVA_OPTS -jar app.jar" ]
