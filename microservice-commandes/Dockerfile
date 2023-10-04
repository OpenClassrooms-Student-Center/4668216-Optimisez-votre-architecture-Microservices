FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests
EXPOSE 9001
CMD ["java", "-jar", "target/mcommandes-0.0.1-SNAPSHOT.jar"]