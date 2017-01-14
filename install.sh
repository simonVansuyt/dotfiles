#!/bin/bash

source "dfiles/dfiles.sh"
sudoAvail= groups | grep -c sudo
# check if sudo option is available
if [ "${sudoAvail}" == "0" ]; then
  user=whoami
  # add user to sudo groep
  adduser $user sudo
fi
sudo source "packages/packages.sh"

# kill firefox and remove
if [ command -v firefox 2> /dev/null ]; then
  echo "removing firefox..."
  killall firefox # without my cause error
  sudo apt-get remove --purge firefox
fi
