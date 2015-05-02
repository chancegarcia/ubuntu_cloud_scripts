#!/bin/bash

#set group to developer
chgrp -R /var/www

#If you want all new files in a particular directory to be owned by a particular group, just apply the setgid and make group writable
chmod g+ws -R /var/www
