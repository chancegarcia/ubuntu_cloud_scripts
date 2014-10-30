#run after installing apache or lamp
#activate ssl module
a2enmod ssl
service apache2 restart

#create SSL cert
mkdir /etc/apache2/ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt

#edit confs as desired from here on out
