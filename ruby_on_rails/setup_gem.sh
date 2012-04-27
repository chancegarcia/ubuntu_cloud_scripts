#!/bin/bash

wget http://rubyforge.org/frs/download.php/76011/rubygems-1.8.22.tgz
tar -xvzf rubygems-1.8.22.tgz
cd rubygems-1.8.22/
ruby setup.rb
sudo su
export REALLY_GEM_UPDATE_SYSTEM=true
gem1.9.1 update --system
gem1.9.1 install rubygems-update
ln -nfs /usr/bin/gem1.9.1 /usr/bin/gem
sudo update_rubygems
#ln -s /etc/alternatives/gem /usr/bin/gem-alt

