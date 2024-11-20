#!/bin/bash

# Install GVM
curl -v -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash

# Source GVM
source /root/.gvm/scripts/gvm

# Install Go 1.23.2
gvm install go1.23.2 -B

# Use Go 1.23.2
gvm use go1.23.2 --default

echo "GVM installation complete"