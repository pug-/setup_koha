#!/bin/bash 
# Setup script for configuring a koha production env on Ubuntu 12.04 LTS

echo deb http://debian.koha-community.org/koha squeeze main | sudo tee /etc/apt/sources.list.d/koha.list
wget -O- http://debian.koha-community.org/koha/gpg.asc | sudo apt-key add -
sudo apt-get update

# install the main koha debian package from the source added above
sudo apt-get install -y koha-common

# install mysql server
sudo apt-get install -y mysql-server

# enable apache2 module
sudo a2enmod rewrite
sudo service apache2 restart