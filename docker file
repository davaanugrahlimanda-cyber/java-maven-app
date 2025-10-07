# Tahap 1: Build dengan Maven
FROM maven:3.9.4-eclipse-temurin-17 AS build

WORKDIR /app
COPY pom.xml .
COPY src ./src

# Build project (hasil ada di target/)
RUN mvn clean package -DskipTests

# Tahap 2: Run dengan JDK ringan
FROM openjdk:17-jdk-slim

WORKDIR /app
COPY --from=build /app/target/java-maven-app-1.1.7-shaded.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
