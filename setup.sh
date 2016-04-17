#!/bin/bash

apt-get update

# install omitted packages
apt-get install -y language-pack-en
apt-get upgrade

# configure time zone
dpkg-reconfigure tzdata

# install and configure firewall
apt-get install ufw
ufw enable
# allow ssh
ufw allow OpenSSH
ufw allow from 127.0.0.1
# allow web
ufw allow 80/tcp
ufw allow 443/tcp
