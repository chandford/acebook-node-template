#!/bin/bash

# Set variables
# reponame=valegro-acebook
webdir=/srv/www/valegro-acebook
codedeployname=valegro-acebook
repodir=/home/ec2-user/${codedeployname}
s3bucket=valegreo-acebook-bucket

# Set permissions
sudo chown -R ec2-user:ec2-user $repodir
sudo chmod 755 $repodir/codedeploy-scripts/*.sh

sudo socat TCP-LISTEN:80,fork TCP:127.0.0.1:3000 1>/dev/null 2>&1 &
