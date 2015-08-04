# chappy-infrastructure
Server configurations and vagrant management for Chappy repositories.

This repository is used to build Vagrant boxes for the Chappy project.

[Our Ubuntu box for Chappy on Atlas](https://atlas.hashicorp.com/shandy-patrol/boxes/chappy).

## Getting set up for development

First, ensure you have [VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed on your machine, which will be used for virtualisation.
Our box(es) use this as a vagrant provider.

Each chappy repository should include a vagrant file. In the root of the repository, run

```
# Will download the latest version of the box and start it.
vagrant up
```

And you're done!

```
# To open an SSH session with the VM.
vagrant ssh
```

Vagrant will sync files in the repository available inside the VM, so changes to files on your local machine will be available on the vagrant box automatically.
The vagrant file will describe which directory(s) map to where on the VM.
By default, the repository will be mapped at /vagrant.

## Making changes to boxes

Modification to existing boxes, and creation of new boxes, should be written, tested and committed to this repository.

To make changes, look for the relevant build script in the bin directory, ensure it is used as a provisioning shell script in the Vagrantfile. Make changes, and perform a full test:

```
vagrant up
```

Commit your changes to this repo and upload the box to Atlas.

To generate a new box file:

```
vagrant halt                           # To stop the currently running VM.
vagrant package --output new-box.box   # To generate the box file.
```

Note:

* Box files themselves should never be committed to this repository.
* Boxes should support virtualbox as a provider.
