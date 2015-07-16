#!/bin/bash -eux
# Add the EPEL repository, and install Ansible.
yum -y install epel-release
yum -y install ansible python-setuptools
