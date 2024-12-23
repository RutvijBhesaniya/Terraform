#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
echo "HI HELLO WORLD" | sudo tee /var/www/html/index.nginx-debian.html > /dev/null
sudo systemctl reload nginx