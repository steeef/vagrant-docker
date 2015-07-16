# packer-vagrant-centos-7-1503-01-x86_64-minimal

## Changes
I've used Ansible playbooks from
https://github.com/geerlingguy/ansible-role-packer-rhel

Security:

	Remember that this is designed for use with Vagrant, vagrant by default has a root password of vagrant.
	The default username/password for vagrant is vagrant/vagrant and the public/private keys are widely available.

	Do not use this for production use or on the Internet without removing the vagrant user, changing the root password,
		and consider enabling the firewall (systemctl enable firewalld) and if you are familiar with selinux, enable it /etc/selinux/config

	You have been warned.
