#!/bin/bash

yum install -y -q \
    policycoreutils-python \
    setools-console \
    vim \
    mlocate \
    httpd
systemctl enable httpd

restorecon -R -v /var/www/app

# Enable SElinux boolean for httpd to discover home directories
setsebool -P httpd_enable_homedirs 1

# Create vagrant user public_html directory and set permissions
mkdir -p /home/vagrant/public_html
echo "<h1>Vagrant user index page.</h1>" > /home/vagrant/public_html/index.html
chown -R vagrant:vagrant /home/vagrant/public_html
chmod 755 /home/vagrant && chmod -R 755 /home/vagrant/public_html
