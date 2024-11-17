FROM openjdk:17-jdk-buster

# Set working directory
WORKDIR /app

# Copy the jar file from the host system to the Docker container
COPY target/bankapp.jar .

# Expose port
EXPOSE 8080

# Run the application
<<<<<<< HEAD
ENTRYPOINT ["java", "-jar", "bankapp.jar"]
=======
ENTRYPOINT ["java", "-jar", "bankapp.jar"]
>>>>>>> ade966690fd27cdf76bded2059150f176ddbaa76
