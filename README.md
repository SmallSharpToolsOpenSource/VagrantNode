VagrantNode
===========

A Vagrant environment for running Node with a Postgres database

## Setup

The setup script is meant to be run on a Mac to set up this Vagrant environment.

Run `setup.sh` to initially set up the environment as well add an entry in `/etc/hosts` so that the environment is easily accessible with a name.

Installing a current and stable version of Node.js can be tricky. Ubuntu uses `apt-get` to manage packages. It references a package repository which has a very old version of Node.js. To get a more current version a PPA should be added. Instructions to install a
newer version of Node.js can be found on the Joyent Wiki on [Installing Node](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager).

Once the Vagrant environment is up the `vagrant ssh` command can be used to get into the virtual machine. In the `/node` directory is a script called `installnodejs.sh` which is used to run the following commands documented on the Joyent Wiki.

    sudo apt-get update
    sudo apt-get install -y python-software-properties python g++ make
    sudo add-apt-repository ppa:chris-lea/node.js
    sudo apt-get update
    sudo apt-get install nodejs

Once the script is finished the node version should be 0.10.22 or higher.

	node --version

The PPA referenced here is maintained by Chris Lea and can be found at the link below:

[https://launchpad.net/~chris-lea/+archive/node.js](https://launchpad.net/~chris-lea/+archive/node.js)

## Caveat

It appears that node is not installed with this process. An older copy of node is still in `/usr/local/bin/node` is in place and running `sudo apt-get remove nodejs` does not remove it. Manually deleting it does clear it out and then the script to install node does run and properly installs a more current version. In order to ensure that the current version of node is installed this copy of node is deleted.

## Feedback

I'd appreciate any feedback. I can be reached on Twitter at [http://twitter.com/brennanMKE](@brennanMKE) or on GitHub.

## License

MIT
