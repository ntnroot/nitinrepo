#!/bin/bash
#
# Script: Create a Menu in Unix
# Date: 30/01/2013
# Platform:(CentOS, Ubuntu)

echo "Welcome $USER"

while true
do
echo "*********************************************"
echo "*****************MAIN MENU*******************"
echo "*********************************************"
echo "[1] Change a password"
echo "[2] View the disk space"
echo "[3] Login to Other box through ssh"
echo "[4] Show all services which are running"
echo "[5] Show all ports which are currently opened"
echo "[6] Show all java applications running"
echo "[7] kill an applicaion"
echo "[8] Exit/stop"
echo "----------------------------------------------"
echo -n "Enter your menu choice [1-8]:"
read ch
case "$ch" in
1) echo "Enter the name of the User you want to change the password";
   read u
   passwd $u
;;

2) echo "*****CURRENT DISK SPACE******";
df -H
;;

3) echo -n "please Enter the destination ip address:";
   read ip #read destination ip address
   echo -n "please Enter the destination Username:";
   read ru #read destination username
   ssh $ip@$ru
;;

4) echo "***CURRENT PROCESSESS***";
ps -aux | less
;;

5) echo "***Current Ports opened***";
netstat -a
;;

6) echo "***Cureent Java apps running***";
ps -ef | grep java
;;

7) echo "Please Enter the application name you want to kill:";
   read app
   killall $app
;;

8) echo "Bye $USER";
   exit 1;;

*) echo -e "You Entered wrong option \n Please choose from 1-8\n"
   echo "Press Enter to continue"
   read
   clear

esac
done
