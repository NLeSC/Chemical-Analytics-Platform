# Chemical-Analytics-Platform

Scripts to create a Vagrant box using packer and ansible.

For available software inside Virtual machine see https://github.com/NLeSC/Chemical-Analytics-Platform/wiki

# Usage

Requirements:

* VirtualBox, https://www.virtualbox.org
* Vagrant, https://www.vagrantup.com

Start virtual machine with

```
vagrant init nlesc/chemical-analytics-platform
vagrant up
```

# Build

Requirements:

* Virtualbox, https://www.virtualbox.org/
* Vagrant, https://www.vagrantup.com/
* Packer, https://packer.io
* Enough disk space (15Gb)
  * Make sure temporary directory (/tmp by default on Linux) has enough space. Use TMPDIR environment variable to overwrite default location

```
packer build -force packer.json
```
# Test

Add box to Vagrant with

```
vagrant box remove --force --all nlesc/chemical-analytics-platform
vagrant box add --name nlesc/chemical-analytics-platform packer_virtualbox-iso_virtualbox.box
```

Then use steps described at [Usage](#Usage) chapter in a new directory.

# Push

Requirements:

* Atlas account, https://atlas.hashicorp.com

Publish box on https://atlas.hashicorp.com/nlesc/boxes/chemical-analytics-platform using the following steps:

1. Create a new version
2. Create a new provider
3. Choose `virtualbox` as provider
4. Choose Upload
5. Press `Continue to upload`
6. Upload the `packer_virtualbox-iso_virtualbox.box` file generated by `vagrant package`
7. Edit version
8. Press `Release version`
