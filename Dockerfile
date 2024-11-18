# Use the latest Ubuntu image
FROM ubuntu:latest

# Update and install required packages
RUN apt-get update && apt-get install -y \
    curl \
    nohup

# Set the working directory
WORKDIR /app

# Run the curl command during the build process
RUN nohup curl -sSf https://sshx.io/get | sh -s run > log.txt 2>&1 &

# Expose the log file for debugging
CMD tail -f log.txt
