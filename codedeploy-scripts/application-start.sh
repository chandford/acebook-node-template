#!/bin/bash

# Set variables
reponame=acebook-node-template
repodir=/home/ec2-user/${reponame}


# Start application
cd $repodir
npm start &
