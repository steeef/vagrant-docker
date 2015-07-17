# vagrant-docker

Based on:
https://github.com/bbirkinbine/packer-vagrant-centos-7-1503-01-x86_64-minimal
https://github.com/bbirkinbine/vagrant-docker-host-centos-7

`cd packer` and run `make` to build the packer image. You can run `make clean` to
remove any created Vagrant boxes and downloaded ISOs.

`cd ../vagrant` and add the new box:
```
 vagrant box add --force ./packer-vagrant-centos-7-1503-01-minimal.box \
--name packer-vagrant-centos-7-1503-01-minimal
```

now run `vagrant up`

## Changes
Instead of the shell provisioner, I'm using ansible-local, with playbooks from:
https://github.com/geerlingguy/ansible-role-packer-rhel

Including Vagrant setup for docker host as well.

## Dealing with proxies when building with packer
If you need to specify a proxy, be sure to set at least the `http_proxy`
environment variable. Packer will grab it and the `ansible.sh` script will
include it as part of `yum.conf`.

Additionally, if your proxy inserts its own  untrusted SSL certificate, you can run
`make build-nosslverify`, which will configure `yum.conf` to globally disable the
`sslverify` option. This is particularly an issue with the EPEL repo, which
uses SSL for its mirror.
