#!/bin/bash -eux
# Add the EPEL repository, and install Ansible.
rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install ansible python-setuptools
