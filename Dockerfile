# Set the base image
FROM resin/rpi-raspbian:latest

# File Author / Maintainer
MAINTAINER Cyrill Kulka


## BEGIN INSTALLATION

# Install nginx
# Separate nginx user not required, as www-data account is already being used
RUN apt-get update && apt-get install -y nginx && apt-get -y clean

# Copy start script
COPY files/start-nginx.sh /opt/


## IMAGE CONFIGURATION

# Expose HTTP & HTTPS
EXPOSE 80 443

# Update (optional) & start nginx
CMD ["bash", "/opt/start-nginx.sh"]
