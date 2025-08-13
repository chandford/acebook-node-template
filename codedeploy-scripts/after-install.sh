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

# Copy files into place
#[ -d $webdir ] && sudo rm -frv ${webdir}/*
#sudo aws s3 sync s3://${s3bucket}/${codedeployname}/$ ${webdir}/ --delete
