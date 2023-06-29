FROM openjdk:8-jdk-alpine
EXPOSE 8080
RUN apk update && apk add maven
WORKDIR /app
COPY . .
RUN mvn clean package
ENTRYPOINT ["java", "-jar", "./target/docker-example-1.1.3.jar"]
