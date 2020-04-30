# Vagrant Playground

A plyground project for myself to learn and play around with Vagrant configuration

## Useful Plugins

A list of useful Vagrant plugins `vagrant plugin install <plugin>`
- vbinfo
- vagrant-vbguest: Install virtualbox guestaddition automatically
- vagrant-hostmanager
- vagrant-netinfo
- vagrant-git

- vagrant-aws


## Useful commands
- `vagrant plugin uninstall <name>`
- `vagrant plugin list`
- `vagrant plugin update <name>`
- `vagrant plugin repair <name>`
- `vagrant license LICENSE_FILE` links license information for commercial plugins
- `vagrant plugin expunge` remove all user plugins
- `vagrant plugin expunge --reinstall` reinstall all plugins

# Vagrant Available Plugins

[Available Plugins](https://github.com/hashicorp/vagrant/wiki/Available-Vagrant-Plugins)

# Vagrant Boxes

Are the static base images (golden images) of the distribution.

To add boxes manually: `vagrant box add ubuntu/bionic64`


# The Vagrantfile

You can create a directory that contains your application deployment and run `vagrant init` to generate the Vagrantfile

Use `vagrant validate` to validate if your Vagrantfile contains errors

## Vagrantfile merging

```
-Box vagrantfile            # shipped with the vagrant box 
---User vagrantfile         # ~/.vagrant.d/Vagrantfile
-----Project Vagrantfile    # current project
-------Multi-Machine        #
---------Provider           #
```

## SSH Access

Use `vagrant ssh-config` to get all the information to connect the box with our ssh client. Some data has been generated in the `.vagrant/` firectory in our current location.

Another option is to use `vagrant ssh <machinename|default>

## Machine status

Use `vagrant status` to get status of all virtual machines in our working directory

Use `vagrant global-status` to see the status of all virtualmachines. Sometimes the global status becomes inconsistent.
You can run `vagrant global-status --prune` to reset all obsolete statuses.

## Manage machines

Two types of shutdown:
- Graceful: `vagrant halt [hostname]`, next `vagrant up` will just resume machines and not fully provision
- Suspend (Not with all providers): `vagrant suspend [hostname]`. To resume a suspended box, use `vagrant reload`
- Destroy: `vagrant destroy [hostname]`

Rebooting a guest:
- `vagrant reload` is also used to reboot a guest

