#!/bin/sh

if [ -e /usr/local/bin/node ]; then
	sudo rm /usr/local/bin/node
fi

sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

hash -r

