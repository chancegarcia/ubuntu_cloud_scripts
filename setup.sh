#!/bin/bash

# use rackspace packaging mirror
echo 'deb http://mirror.rackspace.com/ubuntu/ oneiric main restricted universe
deb http://mirror.rackspace.com/ubuntu/ oneiric-updates main restricted universe
deb http://mirror.rackspace.com/ubuntu/ oneiric-security main restricted universe' > /etc/apt/sources.list
apt-get update

# install omitted packages
apt-get install -y language-pack-en
apt-get upgrade

# configure time zone
dpkg-reconfigure tzdata

# install and configure firewall
apt-get install ufw
ufw enable
ufw allow OpenSSH
ufw allow from 127.0.0.1
