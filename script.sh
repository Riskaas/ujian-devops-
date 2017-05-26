#!/usr/bin/env bash
echo "Mulai Provisioning"
echo "Mulai Update"
sudo apt-get update
echo "Instalasi Nginx,curl,vim"
sudo apt-get install -y nginx curl vim

echo "Nginx Config"
sudo rm -rf /var/www/index.nginx-debian.html
sudo cp -r /vagrant/blankon-linux-static-web/index.html /var/www/html
sudo cp -r /vagrant/blankon-linux-static-web/tour_2.png /var/
www/html
sudo cp -r /vagrant/blankon-linux-static-web/images/tour_3.png /var/
www/html
sudo service nginx restart
