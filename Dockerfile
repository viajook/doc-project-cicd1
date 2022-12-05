FROM openjdk:17-alpine AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package
#RUN mvn -B package -DskipTests --file /home/app/pom.xml

FROM openjdk:17
LABEL org.opencontainers.image.source="https://github.com/viajook/doc-project-cicd1"
#COPY ./target/*.jar app.jar
COPY --from=build /home/app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]