#!/bin/bash
set -e

# Wait a few seconds for the service to fully start
sleep 10

if curl -f http://localhost:3000 > /dev/null 2>&1; then
    echo "Application is running successfully on port 3000"
    exit 0
else
    echo "Application is not responding on port 3000"
    exit 1
fi