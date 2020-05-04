#!/bin/bash

mv /tmp/app.conf /etc/httpd/conf.d/app.conf
systemctl restart httpd
