FROM maven:3.8.1-openjdk-17-slim AS build
RUN mkdir -p /app
WORKDIR /app
COPY pom.xml /app
COPY src /app/src
RUN mvn -B package --file pom.xml -DskipTests
FROM openjdk-17-slim
LABEL org.opencontainers.image.source="https://github.com/viajook/doc-project-cicd1"

COPY --from=build /app/target/*jar-with-dependencies.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]