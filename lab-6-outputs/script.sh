#!/bin/bash

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done

# install nginx
yum update -y
yum install httpd -y

# make sure httpd is started
service httpd start
