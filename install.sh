#!/bin/bash
#variable to check if you need to restart
restart=0
#check if usr/local/bin exists
if [ ! -d /usr/local/bin/ ]
then
	#if so then create it
	sudo mkdir /usr/local/
	sudo mkdir /usr/local/bin/
	#and add it to path
	export PATH=$PATH:/usr/local/bin
	#and set the reset flag
	restart=1
fi
echo 'installing hostup'
#give all executables executable permissions
sudo chmod a+x hostup
#copy executables to /usr/local/bin
sudo cp hostup /usr/local/bin
#this is in case you need a folder in .config
#if [ ! -d ~/.config/INSERT PROGRAM NAME HERE/ ]
#then
	#create it if it doesn't already exist
#	mkdir ~/.config/INSERT PROGRAM NAME HERE/
#fi
#cp INSERT CONFIG FILE HERE ~/.config/INSERT PROGRAM NAME HERE/
#cp INSERT CONFIG FILE HERE ~/.config/INSERT PROGRAM NAME HERE/
echo '
'
#check if the restart flag is set
if [ $restart != 1 ]
then
	#if not then tell the user that the program is installed
	echo "fully installed"
else
	#if so then tell the user that they will need to restart
	echo "you will need to reboot to finish installation"
fi
exit
