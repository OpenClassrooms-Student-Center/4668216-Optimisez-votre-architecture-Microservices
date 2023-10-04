FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn package

FROM openjdk:17
WORKDIR /app
COPY --from=build /app/target/mcommandes-0.0.1-SNAPSHOT.jar /app/mcommandes-0.0.1-SNAPSHOT.jar
EXPOSE 9002
CMD ["java", "-jar", "mcommandes-0.0.1-SNAPSHOT.jar"]