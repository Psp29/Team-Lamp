#!/bin/bash

#Hello fork this file

echo "Checking if Nignx is installed and running or not"
if command -v nginx >/dev/null 2>&1; then
	echo "Nginx installation detected! Removing it from the system"
        sudo apt purge nginx -y
	sudo apt autoremove -y
	echo "Installing apache2...."
        sudo apt install apache2 libapache2-mod-php7.4 -y
	sudo systemctl enable apache2
else
	echo "Installing apache2...."
        sudo apt install apache2 libapache2-mod-php7.4 -y
	sudo systemctl enable apache2
fi
echo "Apache Installation is Done."

echo  Installing phpMyAdmin...
sudo apt-get install phpmyadmin -y
