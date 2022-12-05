FROM maven:3.6.3-openjdk-17-slim AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn -B package --file pom.xml -DskipTests

FROM openjdk:17.0.2-slim
COPY --from=build /workspace/target/*jar-with-dependencies.jar app.jar
EXPOSE 8080
LABEL org.opencontainers.image.source="https://github.com/viajook/doc-project-cicd1"
ENTRYPOINT ["java","-jar","app.jar"]