#!/bin/bash -eux
# Add the EPEL repository, and install Ansible.
rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum -y install ansible python-setuptools
