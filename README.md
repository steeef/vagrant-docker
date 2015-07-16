# vagrant-docker

Based on:
https://github.com/bbirkinbine/packer-vagrant-centos-7-1503-01-x86_64-minimal
https://github.com/bbirkinbine/vagrant-docker-host-centos-7

## Changes
Instead of the shell provisioner, I'm using ansible-local, with playbooks from:
https://github.com/geerlingguy/ansible-role-packer-rhel

Including Vagrant setup for docker host as well.
