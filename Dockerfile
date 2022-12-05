FROM openjdk:17
LABEL org.opencontainers.image.source="https://github.com/viajook/doc-project-cicd1"
COPY target/devops-tools-mgt-SNAPSHOT-1.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]