#!/bin/bash
sudo yum update -y
sudo yum install apache2 -y
sudo systemctl start httpd
sudo systemctl enable httpd


