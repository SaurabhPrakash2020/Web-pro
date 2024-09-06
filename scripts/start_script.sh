#!/bin/bash

sudo yum install -y python3
# Move to the project directory and start a simple Python HTTP server
cd /var/www/html/
sudo python3 -m http.server 80
