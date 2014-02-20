#!/bin/sh

sudo -s 'echo "10.10.25.25      localdev" >> /etc/hosts'
dscacheutil -flushcache

sudo gem install librarian-chef
librarian-chef install
vagrant up
