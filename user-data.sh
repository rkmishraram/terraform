#!/bin/bash

# Update the package manager's package list
sudo yum update -y

# Install Nginx
sudo yum install nginx -y
sudo echo "welcome to my site" > /usr/share/nginx/html/index.html

# Start Nginx
sudo systemctl start nginx
# Enable Nginx to start on boot
sudo systemctl enable ngnix
