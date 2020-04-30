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
