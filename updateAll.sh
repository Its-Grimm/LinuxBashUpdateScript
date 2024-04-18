#!/bin/bash

read -p 'Update and Upgrade?[Y/n] ' status
if [[ "$status" == ["Yy"] ]]; then 
	echo 'Updating...' 
	sudo apt-get update
	echo 'Updating Complete.'
	echo ' '
	echo 'Upgrading...'
	sudo apt-get upgrade
	echo 'Upgrading Complete.'
	echo ' ' 
	echo 'Cleaning Up...'
	sudo apt-get autoremove -y && sudo apt-get clean
	echo 'Cleaning Complete.'
	echo ' '
	echo 'System Updated and Cleaned Successfully.'
	read -p 'Clean Terminal?[Y/n] ' cleanStatus
	if [[ "$cleanStatus" == ["Yy"] ]]; then
		clear
	fi
else
	echo 'CANCELLED'
fi
