#!/bin/bash

wget http://rubyforge.org/frs/download.php/76011/rubygems-1.8.22.tgz
tar -xvzf rubygems-1.8.22.tgz
cd rubygems-1.8.22/
ruby setup.rb
