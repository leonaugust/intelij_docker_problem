# Build stage
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package -DskipTests

# Run stage
FROM adoptopenjdk/openjdk11:alpine-jre
COPY --from=build /usr/src/app/target/test-app.jar /usr/app/test-app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar", "-Djava.security.egd=file:/dev/./urandom","/usr/app/test-app.jar"]


