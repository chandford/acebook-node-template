#!/bin/bash

brew install nvm
echo 'export NVM_DIR="$HOME/.nvm" /
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" /
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ' >> ~/.bashrc
source ~/.bashrc

nvm install 23

npm install

brew tap mongodb/brew
brew install mongodb-community@8.0
source ~/.bashrc
brew services start mongodb-community@8.0

npm start
