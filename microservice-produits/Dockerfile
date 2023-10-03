# Use the official OpenJDK 17 as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container
COPY target/mproduits-0.0.1-SNAPSHOT.jar /app/mproduits-0.0.1-SNAPSHOT.jar

# Expose the port that your Spring Boot application will run on (usually 8080)
EXPOSE 9001

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "mproduits-0.0.1-SNAPSHOT.jar"]