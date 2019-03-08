apt upgrade
apt update
apt install apache2 -y
apt install mosquitto -y
apt install mysql-server mysql-client -y
apt install php -y
sudo apt install phpmyadmin -y
cp phpmyadmin.conf /etc/apache2/phpmyadmin.conf
chown -R www-data /usr/share
sudo mkdir /usr/share/phpmyadmin/config
chmod 777 /usr/share/phpmyadmin/config
chown -R www-data /usr/share
mysql_secure_installation
