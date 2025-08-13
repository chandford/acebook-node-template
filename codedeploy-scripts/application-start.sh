#!/bin/bash
set -e

cd /home/ec2-user/valegro-acebook

# Install npm dependencies
npm ci

# Stop any existing Node.js processes
pkill -f "node" || true

# Start the application
npm start &

# Give the server a moment to start
sleep 5