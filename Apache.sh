#!bin/sh
#Purpose: Script to install Apache Web  Server
echo "........................................"
echo "|                                      |"
echo "|Seeting Apache Web server|"
echo ".........................................."
echo Please provide the application user for installing the Apache
read user
useradd -d /home/$user $user
cd /home/$user
wget https://downloads.apache.org/httpd/httpd-2.4.43.tar.gz
tar -xvf httpd-2.4.43.tar.gz
mv httpd-2.4.43.tar.gz Apache
chown -R $user:$user*

