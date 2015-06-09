# packer-vagrant-centos-7-1503-01-x86_64-minimal

Packer.io build inspired by my CentOS 7 1503-01 build
https://github.com/bbirkinbine/vagrant-centos-7-1503-x86_64-minimal

You can find the output of this build on [Atlas]https://atlas.hashicorp.com/bbirkinbine/boxes/packer-vagrant-centos-7-minimal

If using newer version of Vagrant, can use this in your Vagrant file
config.vm.box = "bbirkinbine/packer-vagrant-centos-7-minimal"


Security:

	Remember that this is designed for use with Vagrant, vagrant by default has a root password of vagrant.
	The default username/password for vagrant is vagrant/vagrant and the public/private keys are widely available.

	Do not use this for production use or on the Internet without removing the vagrant user, changing the root password,
		and consider enabling the firewall (systemctl enable firewalld) and if you are familiar with selinux, enable it /etc/selinux/config

	You have been warned.
