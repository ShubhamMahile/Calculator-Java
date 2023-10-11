# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY target/Calculator-java.jar /app/Calculator-java.jar

# Define the command to run your Java application
CMD ["java", "-jar", "Calculator-java.jar"]
