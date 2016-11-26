# Xubuntu 16.04 desktop for C++ development

This file was copied from Arne Mertz's repository: https://github.com/arnemertz/Xubuntu1604_DevBox
See his blog for more information: http://arne-mertz.de/2016/08/the-4c-development-environment/

Based on a Xubuntu 16.04 installation, this Vagrant file installs the development environment for Project Tooling.
That's currently only git and clang, more will follow.

- **C**lang 3.8
... and some more useful stuff like lldb and of course git.

## Installation and first launch

### VirtualBox

Download and install Oracle VirtualBox from https://www.virtualbox.org/

### Vagrant

Download and install Vagrant from https://www.vagrantup.com/

You may also want to install the Vagrant plugin for VirtualBox Guest Additions. 
The base box used comes with the Guest Additions for 5.0.18, and the plugin will take care 
to install the correct Guest Additions if your version of VirtualBox differs from that.
To do so simply call 

    vagrant plugin install vagrant-vbguest
	
### Download the repo and launch!

Clone the git repository or download and unpack the zip archive. 
Open a shell in the directory containing the `Vagrantfile` and run

    vagrant up

This will take a while when you run it for the first time.
Vagrant will download the base box, launch the virtual machine and install the software mentioned above.

### Login and finish installation

When the software installation is complete, log into the VM (user and password are "vagrant").










