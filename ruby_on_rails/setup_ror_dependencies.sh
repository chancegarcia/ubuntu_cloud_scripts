#!/bin/bash

# run as sudo
# update to latest ruby if needed
apt-get install ruby1.9.1 rails nodejs libcurl4-openssl-dev libssl-dev zlib1g-dev apache2-prefork-dev libapr1-dev libaprutil1-dev libmysqlclient-dev libmysql-ruby1.9 ruby1.9.1-dev

update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby1.8 500 \
    --slave /usr/share/man/man1/ruby.1.gz ruby.1.gz \
            /usr/share/man/man1/ruby1.8.1.gz \
    --slave /usr/bin/ri ri /usr/bin/ri1.8 \
    --slave /usr/bin/irb irb /usr/bin/irb1.8 \
    --slave /usr/bin/gem gem /usr/bin/gem1.8 \
    --slave /var/lib/gems/bin gem-bin /var/lib/gems/1.8/bin


update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby1.9.1 400 \
    --slave /usr/share/man/man1/ruby.1.gz ruby.1.gz \
            /usr/share/man/man1/ruby1.9.1.1.gz \
    --slave /usr/bin/ri ri /usr/bin/ri1.9.1 \
    --slave /usr/bin/irb irb /usr/bin/irb1.9.1 \
    --slave /usr/bin/gem gem /usr/bin/gem1.9.1
    
update-alternatives --config ruby
update-alternatives --remove-all gem

#ln -s /etc/alternatives/ruby /usr/bin/ruby-alt
#ln -nsf /usr/bin/ruby1.9.1 /usr/bin/ruby
