FROM maven:3.8.2-jdk-11 AS build
COPY . /app
WORKDIR /app
RUN mvn clean package -DskipTests

# Package stage
FROM openjdk:11-jdk-slim
COPY --from=build /app/target/apacheDerby-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
