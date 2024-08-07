FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/*.jar backendBook_Finding.jar
ENTRYPOINT ["java","-jar","/backendBook_Finding.jar"]
EXPOSE 8080
