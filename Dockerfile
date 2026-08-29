FROM eclipse-temurin:21-jre
#➡️ Base image — uses Java 21 JRE to run your Spring Boot application.
WORKDIR /app
#Working directory — creates/sets /app as the working folder inside the container.

COPY target/*.jar app.jar
#Copy JAR — takes your Spring Boot .jar from your local target folder and copies it into the container as app.jar.
EXPOSE 8081
#Port declaration — tells Docker that the application is expected to use port 8081.
ENTRYPOINT ["java","-jar","app.jar"]
# Starts the Spring Boot application