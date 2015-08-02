# chappy-infrastructure
Server configurations and vagrant management for Chappy repositories.

This repository is used to build Vagrant boxes for the Chappy project.
Modification to existing boxes, and creation of new boxes, should be written, tested and committed to this repository.

[Our Ubuntu box for Chappy on Atlas](https://atlas.hashicorp.com/shandy-patrol/boxes/chappy).

## Making changes

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
