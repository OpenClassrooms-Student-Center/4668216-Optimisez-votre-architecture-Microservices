FROM maven:3.8.3 AS build
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

# Set the working directory in the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container
COPY --from=build /app/target/mpaiement-0.0.1-SNAPSHOT.jar /app/mpaiement-0.0.1-SNAPSHOT.jar

# Expose the port that your Spring Boot application will run on (usually 8080)
EXPOSE 9002

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "mpaiement-0.0.1-SNAPSHOT.jar"]