FROM openjdk:17-jdk-buster

# Set working directory
WORKDIR /app

# Copy the jar file from the host system to the Docker container
COPY target/bankapp.jar .

# Expose port
EXPOSE 8080

# Run the application

ENTRYPOINT ["java", "-jar", "bankapp.jar"]
