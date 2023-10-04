FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn package

FROM openjdk:17
WORKDIR /app
COPY --from=build /app/target/mproduits-0.0.1-SNAPSHOT.jar /app/mproduits-0.0.1-SNAPSHOT.jar
EXPOSE 9001
CMD ["java", "-jar", "mproduits-0.0.1-SNAPSHOT.jar"]