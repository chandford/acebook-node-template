#!/bin/bash
set -e

# Stop Node.js processes
pkill -f "node" || true

# Stop MongoDB if needed (optional - might want to keep it running)
# systemctl stop mongod

echo "Application stopped successfully"
