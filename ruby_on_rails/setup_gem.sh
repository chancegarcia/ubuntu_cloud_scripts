#!/bin/bash

wget http://rubyforge.org/frs/download.php/76011/rubygems-1.8.22.tgz
tar -xvzf rubygems-1.8.22.tgz
cd rubygems-1.8.22/
ruby setup.rb
export REALLY_GEM_UPDATE_SYSTEM=true
gem update --system
gem install rubygems-update
sudo update_rubygems
#ln -s /etc/alternatives/gem /usr/bin/gem-alt
#ln -nfs /usr/bin/gem1.9.1 /usr/bin/gem
