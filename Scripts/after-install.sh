#!/bin/bash

# Set variables
reponame=acebook-node-template
repodir=/home/ec2-user/${reponame}
webdir=/srv/www/valegro-acebook
codedeployname=valegro-acebook
s3bucket=valegreo-acebook-bucket

# Set permissions
sudo chown -R ec2-user:ec2-user $repodir
sudo chmod 755 $repodir/Scripts/*.sh

# Copy files into place
[ -d $webdir ] && rm -frv ${webdir}/*
aws s3 sync s3://${s3bucket}/${codedeployname}/$ ${webdir}/ --delete
