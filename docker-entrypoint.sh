#!/bin/bash

set -e

if [ "$IS_MASTER" = "0" ]
then
  echo "Running SLAVE server"
else 
  echo "Running MASTER server"
  # if [ ! -d "/opt/cronicle/data" ]; then
  #   echo "Data directory doesn't exist, performing setup..."
    /opt/cronicle/bin/control.sh setup
  # fi
fi

/opt/cronicle/bin/control.sh start

while true; 
do 
  sleep 30; 
  /opt/cronicle/bin/control.sh status
done
