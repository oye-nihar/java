FROM openjdk:8-jdk-alpine3.15

RUN apk update && apk upgrade && \
    apk add --no-cache --virtual .build-deps gcc libc-dev && \
    apk del .build-deps

WORKDIR /app
COPY ./target/*.jar /app.jar
CMD ["java", "-jar", "/app.jar"]
