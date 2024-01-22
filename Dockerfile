# Use the official OpenJDK 11 base image
FROM openjdk:11

# Set the working directory
WORKDIR /app

# Copy the JAR file and application.properties to the container
COPY /opt/nhindirect/config-service/config-service-8.0.7.jar /app/config-service-8.0.7.jar
COPY /opt/nhindirect/config-service/application.properties /app/application.properties

# Expose the port your application is running on (if applicable)
EXPOSE 8082

# Command to run your application
CMD ["java", "-jar", "config-service-8.0.7.jar"]