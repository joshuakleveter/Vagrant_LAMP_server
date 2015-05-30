export DEBIAN_FRONTEND=noninteractive

apt-get update

apt-get install -y apache2 php5 php5-mysql mysql-server-5.6

chsh -s /bin/bash www-data

ln -s /var/www/lamp.dev/conf/lamp.dev.conf /etc/apache2/sites-available/lamp.dev.conf

chgrp www-data /var/log/apache2
chmod g+w /var/log/apache2
chown www-data.www-data /var/www/lamp.dev/public_html
chown www-data.www-data /var/www/lamp.dev/conf

a2enmod rewrite

a2dissite 000-default

a2ensite lamp.dev.conf

service apache2 reload