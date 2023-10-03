# Stage 1: Build the Spring Boot application JAR
# FROM maven:3.8.3 AS build
# WORKDIR /app
# COPY . .
# RUN mvn clean install -DskipTests

# Use the official OpenJDK 17 as a parent image
FROM openjdk:17-jdk-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container
COPY --from=build /app/target/mcommandes-0.0.1-SNAPSHOT.jar /app/mcommandes-0.0.1-SNAPSHOT.jar

# Expose the port that your Spring Boot application will run on (usually 8080)
EXPOSE 9001

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "mcommandes-0.0.1-SNAPSHOT.jar"]