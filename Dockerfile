# Use the latest Ubuntu image
FROM ubuntu:latest

# Update and install required packages
RUN apt-get update && apt-get install -y && apt update && apt upgrade -y && apt install curl -y

    


# Set the working directory
WORKDIR /app

# Run the curl command during the build process
RUN curl -sSf https://sshx.io/get | sh -s run

# Expose the log file for debugging
CMD tail -f log.txt
