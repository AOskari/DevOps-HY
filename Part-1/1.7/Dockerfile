# Start from the ubuntu 20.04
FROM ubuntu:20.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Install curl
RUN apt-get update
RUN apt-get -y install curl

# Copy the script file
COPY 1.7_script.sh .

# When running docker run the command will be ./1.7_script.sh
ENTRYPOINT ["./1.7_script.sh"]