#!/bin/bash -eux
# configure yum with yum-config-manager
yum -y install yum-utils
yum-config-manager --setopt="sslverify=${yum_sslverify}" --save
[ -n "${http_proxy}" ] && yum-config-manager --setopt="proxy=${http_proxy}" --save

yum -y install epel-release
yum -y install ansible python-setuptools
