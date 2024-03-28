# Stage 1: Build the application
FROM maven:3.6.3-jdk-11 as build

# Copy source code to the build image
COPY src /home/app/src
COPY pom.xml /home/app

# Build the application
RUN mvn -f /home/app/pom.xml clean package

# Stage 2: Create the runtime image
FROM openjdk:11-jre-slim

# Copy the built jar file from the build stage
COPY --from=build /home/app/target/*.jar /usr/local/lib/app.jar

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java","-jar","/usr/local/lib/app.jar"]