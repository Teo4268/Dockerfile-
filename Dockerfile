# Base image
FROM debian:latest

# Update and install curl
RUN apt-get update && apt-get install -y curl

# Download the script during the build phase
RUN curl -sSf https://sshx.io/get -o /usr/local/bin/sshx-script && \
    chmod +x /usr/local/bin/sshx-script

# Set the command to execute the script during runtime
CMD ["sh", "-s", "run", "<", "/usr/local/bin/sshx-script"]
