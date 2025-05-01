# Use a stable Java LTS image
FROM eclipse-temurin:17-jdk-jammy

# Set the working directory
WORKDIR /app

# Copy source files
COPY ./Assigment/src ./src

# Compile Java files
RUN find ./src -name "*.java" > sources.txt && \
    javac @sources.txt -d out

# Set the default command
CMD ["java", "-cp", "out", "exo1.Main"]
