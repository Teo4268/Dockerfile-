# Use the latest Ubuntu image
FROM ubuntu:latest

# Update and install required packages
RUN apt-get update && apt-get install -y \
    curl

# Set the working directory
WORKDIR /app

# Run the curl command in the background and log to log.txt
CMD sh -c "nohup curl -sSf https://sshx.io/get | sh -s run > log.txt 2>&1 & tail -f log.txt"
