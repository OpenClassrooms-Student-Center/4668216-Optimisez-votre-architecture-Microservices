FROM maven:3.8.3 AS build
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/mpaiement-0.0.1-SNAPSHOT.jar /app/mpaiement-0.0.1-SNAPSHOT.jar
EXPOSE 9003
CMD ["java", "-jar", "mpaiement-0.0.1-SNAPSHOT.jar"]