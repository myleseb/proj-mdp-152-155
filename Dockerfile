# Stage 1: Build the application
FROM maven:3.8.4-openjdk-11
WORKDIR /app

# Copy the pom.xml file
COPY pom.xml .

# Download dependencies and cache them in the Docker layer
RUN mvn dependency:go-offline

# Copy the application source code
COPY src ./src

# Build the application
RUN mvn package -DskipTests

# Stage 2: Package the application into a Docker image
FROM tomcat:9.0-jdk11-openjdk

# Copy the WAR file from the build stage to the Tomcat webapps directory
COPY /target/WebAppCal-1.3.5.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
