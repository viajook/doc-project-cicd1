FROM openjdk:17
LABEL org.opencontainers.image.source="https://github.com/viajook/doc-project-cicd1"
COPY --chown=node:node ./target/*.jar ./app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]