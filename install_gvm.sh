#!/bin/bash
set -x
# Install GVM
/setup/gvm-installer

# Source GVM
source /root/.gvm/scripts/gvm

# Install Go 1.23.2
gvm install go1.23.2 -B

# Use Go 1.23.2
gvm use go1.23.2 --default

echo "GVM installation complete"