FROM openjdk:17-buster
COPY resources ./resources
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
