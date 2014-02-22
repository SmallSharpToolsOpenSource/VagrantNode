VagrantNode
===========

A Vagrant environment for running Node with a Postgres database

## Setup

The setup script is meant to be run on a Mac to set up this Vagrant environment.

Run `setup.sh` to initially set up the environment as well add an entry in `/etc/hosts` so that the environment is easily accessible with a name.

Initially this Vagrant configuration and Chef provisioning script were installing an old
version of Node.js so it has been revised to use a different Chef cookbook. Now it installs a current version of node and npm.

There are also instructions on the Joyent Wiki on [Installing Node](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager).

The commands to install Node.js on Ubuntu with a package are below.

    sudo apt-get update
    sudo apt-get install -y python-software-properties python g++ make
    sudo add-apt-repository ppa:chris-lea/node.js
    sudo apt-get update
    sudo apt-get install nodejs

Once the script is finished the node version should be 0.10.22 or higher.

	node --version

The PPA referenced here is maintained by Chris Lea and can be found at the link below:

[https://launchpad.net/~chris-lea/+archive/node.js](https://launchpad.net/~chris-lea/+archive/node.js)

## Feedback

I'd appreciate any feedback. I can be reached on Twitter as [@brennanMKE](http://twitter.com/brennanMKE) or on GitHub.

## License

VagrantNode is available under the MIT license. See the LICENSE file for more info.

## Contact

Brennan Stehling  
[SmallSharpTools](http://www.smallsharptools.com/)  
[@smallsharptools](https://twitter.com/smallsharptools) (Twitter)  
