FROM openjdk:17
LABEL org.opencontainers.image.source="https://github.com/viajook/doc-project-cicd1"
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]