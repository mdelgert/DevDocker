# Use the Alpine Linux base image
FROM alpine:3.18

# Set the working directory
WORKDIR /app

# Copy the entrypoint script to the working directory
COPY entrypoint.sh /app/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Set the entrypoint to execute the script
ENTRYPOINT ["/app/entrypoint.sh"]

# docker build -t hello-world .
# docker run hello-world
# docker run mdelgert/hello-world