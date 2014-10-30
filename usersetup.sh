#!/bin/bash

# create groups
groupadd admin
groupadd developer

# add user
useradd -c "Chance Garcia" -m -s "/bin/bash" chance

# add to groups
usermod -a -G admin,adm,developer,sudo chance

# prompt for password for new user
passwd chance
