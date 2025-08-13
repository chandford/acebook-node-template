#!/bin/bash
set -e

cd /home/ec2-user/valegro-acebook

# Install npm dependencies
npm ci

# Stop any existing Node.js processes
sudo pkill -f "node" || true

# Start the application
npm start & disown

# Give the server a moment to start
echo "sleeping for 5 seconds"
sleep 5
