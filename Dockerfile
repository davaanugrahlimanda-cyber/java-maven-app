FROM openjdk:17-jdk-slim
WORKDIR /app

# Copy semua JAR hasil build Maven dari folder target
COPY target/*.jar app.jar

# Jalankan aplikasi
ENTRYPOINT ["java", "-jar", "app.jar"]
