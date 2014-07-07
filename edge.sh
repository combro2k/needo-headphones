#!/bin/bash

# Does the user want the latest version
if [ -z "$EDGE" ]; then
  echo "Bleeding edge not requested"
else
  apt-get install -qy git
  if [[ -d "/opt/headphones" ]]; then
    rm -rf /opt/headphones
  fi
  git clone https://github.com/rembo10/headphones.git /opt/headphones
  chown -R nobody:users /opt/headphones
fi
