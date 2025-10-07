# Gunakan base image Java
FROM openjdk:17-jdk-slim

# Set direktori kerja di dalam container
WORKDIR /app

# Copy hasil build Maven (fat JAR) ke dalam container
COPY target/java-maven-app-1.1.7-shaded.jar app.jar

# Perintah untuk menjalankan aplikasi
ENTRYPOINT ["java", "-jar", "app.jar"]
