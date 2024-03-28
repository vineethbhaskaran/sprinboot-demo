# Use the official OpenJDK image as the base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container at /app
COPY target/demo-0.0.1-SNAPSHOT.jar.jar /app/app.jar

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app/app.jar"]
