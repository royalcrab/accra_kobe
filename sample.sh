apt upgrade -y
apt update -y
apt install apache2 -y
apt install mosquitto -y
apt install mosquitto-clients -y
apt install mysql-server mysql-client -y
apt install php -y
sudo apt install phpmyadmin -y
cp phpmyadmin.conf /etc/apache2/phpmyadmin.conf
chown -R www-data /usr/share
sudo mkdir /usr/share/phpmyadmin/config
chmod 777 /usr/share/phpmyadmin/config
chown -R www-data /usr/share
ln -s /usr/share/phpmyadmin /var/www/html/
mysql_secure_installation
cp mysqld.cnf /etc/mysql/mysql.conf.d/
/etc/init.d/mysql restart
a2enmod ssl
a2ensite default-ssl
apt-get install certbot python-certbot-apache
# letsencrypt run --apache
