#!/bin/bash

# installs mysql57

set -e

apt-get update
wget https://repo.mysql.com/mysql-apt-config_0.7.3-1_all.deb
dpkg -i mysql-apt-config_0.7.3-1_all.deb
apt-get update
apt-get install -y mysql-server
rm -rf mysql-apt-config_0.7.3-1_all.deb
