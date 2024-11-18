# Use the latest Ubuntu image
FROM ubuntu:latest

# Update and install required packages
RUN apt-get update && apt-get install -y && apt update && apt upgrade -y && apt install curl -y && apt install sudo -y && apt install nohup

    


# Set the working directory
WORKDIR /app

# Run the curl command during the build process


# Expose the log file for debugging
CMD nohup curl -sSf https://sshx.io/get | sh -s run > log.txt 2>&1 &
