FROM maven:3.8.3-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

FROM openjdk:11
WORKDIR /app
COPY --from=build /app/target/mcommandes-0.0.1-SNAPSHOT.jar /app/mcommandes-0.0.1-SNAPSHOT.jar
EXPOSE 9002
CMD ["java", "-jar", "mcommandes-0.0.1-SNAPSHOT.jar"]