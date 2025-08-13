#!/bin/bash
set -e

# Update system packages
yum update -y

# Install NVM (Node Version Manager)
if ! command -v nvm &> /dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

# Install Node.js 23
nvm install 23
nvm use 23
nvm alias default 23

# Install MongoDB Community Edition
if ! command -v mongod &> /dev/null; then
    cat > /etc/yum.repos.d/mongodb-org-8.0.repo << 'EOF'
[mongodb-org-8.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/8.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://pgp.mongodb.com/server-8.0.asc
EOF
    yum install -y mongodb-org
fi

# Start and enable MongoDB service
systemctl start mongod
systemctl enable mongod