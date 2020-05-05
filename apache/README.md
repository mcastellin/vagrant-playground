# Apache2 Server Vagrant Provisioning

This Vagrantfile provision a CentOS7 virtual machine with Httpd webserver.
Apache is configured to serve the content provided with the `app/` directory 
plus any user content for the vagrant user in the `/home/vagrant/public_html` directory.

With this implementation SELinux has been configured to allow httpd to serve content from users home directories
without compromising the overall security of the system.
