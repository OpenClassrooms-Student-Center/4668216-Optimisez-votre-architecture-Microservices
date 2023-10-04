FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn package

FROM openjdk:17
WORKDIR /app
COPY --from=build /app/target/mpaiement-0.0.1-SNAPSHOT.jar /app/mpaiement-0.0.1-SNAPSHOT.jar
EXPOSE 9003
CMD ["java", "-jar", "mpaiement-0.0.1-SNAPSHOT.jar"]