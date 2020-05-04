#!/bin/bash

yum install -y httpd policycoreutils-python
systemctl enable httpd

restorecon -R -v /var/www/app
