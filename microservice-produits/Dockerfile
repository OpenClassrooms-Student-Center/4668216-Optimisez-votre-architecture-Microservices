FROM maven:3.6.3-jdk-8 AS build
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

FROM openjdk:8
WORKDIR /app
COPY --from=build /app/target/mproduits-0.0.1-SNAPSHOT.jar /app/mproduits-0.0.1-SNAPSHOT.jar
EXPOSE 9001
CMD ["java", "-jar", "mproduits-0.0.1-SNAPSHOT.jar"]