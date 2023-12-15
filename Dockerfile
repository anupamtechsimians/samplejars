# Use a minimal base image with Java (JRE)
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

COPY . /app

# Copy the JAR file from the current directory to the container
# COPY *.jar app.jar

# Expose any necessary ports (replace 8080 with the actual port your application uses)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "ej2-webservices-0.0.1-SNAPSHOT.jar"]
