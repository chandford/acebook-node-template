#!/bin/bash
set -e

cd /var/www/acebook

# Source NVM and use Node 23
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm use 23

# Install npm dependencies
npm install

# Stop any existing Node.js processes
pkill -f "node" || true

# Start the application
npm start &

# Give the server a moment to start
sleep 5