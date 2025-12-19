#/bin/bash
cd /tmp
sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl enable --now nginx
sudo echo "Hello World" > /var/www/html/index.html