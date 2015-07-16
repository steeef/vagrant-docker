build:
	packer build centos7-packer.json

build-nosslverify:
	packer build -var 'yum_sslverify=False' centos7-packer.json

clean:
	rm -f ../vagrant/*.box
	rm -rf ./packer_cache
