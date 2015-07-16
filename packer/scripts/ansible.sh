#!/bin/bash -eux
# debug yum http calls
export URLGRABBER_DEBUG=1
# Add the EPEL repository and install Ansible.
yum -y install epel-release
yum -y install ansible python-setuptools
