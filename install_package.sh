#!/bin/bash

<<note

This script will install any package passed as a argument
./intsall_package.sh <arg>
note


echo "*****************INSTALLING $1*******************"

sudo apt-get update
sudo apt-get install $1 -y

sudo systemctl start $1
sudo systemctl enable $1

echo "******************INSTALLED $1********************"

ubuntu@ip-172-31-3-15:~/scripts$ vim install_package.sh
ubuntu@ip-172-31-3-15:~/scripts$ cat install_package.sh
#!/bin/bash

<<note

This script will install any package passed as a argument
./intsall_package.sh <arg>
note


echo "*****************INSTALLING $1*******************"

sudo apt-get update
sudo apt-get install $1 -y

sudo systemctl start $1
sudo systemctl enable $1

echo "******************INSTALLED $1********************"
