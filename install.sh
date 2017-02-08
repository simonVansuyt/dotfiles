#!/bin/bash

sudoAvail= groups | grep -c sudo
# check if sudo option is available
if [ "${sudoAvail}" == "0" ]; then
  user=whoami
  # add user to sudo groep
  adduser $user sudo
fi

# create .dotfiles folder in ~
[ ! -d ~/.dotfiles ] && mkdir -p "~/.dotfiles"
# create backupfolder based on time
backupFolder=~/.dotfiles/$(date +%m)-$(date +%d)-$(date +%Y)-$(date +%T)
mkdir -p $backupFolder
shopt -s dotglob # enable copying . files
# copying the files
sudo cp -rf ~/.[^.]* $backupFoler/
echo -e "Your default . files are copyed in \x1B[0;31m${backupFolder}/\x1B[0m folder"
unset backupFolder

# let install the dfiles
source "dfiles/dfiles.sh"

sudo "packages/packages.sh"

# kill firefox and remove
if [ command -v firefox 2> /dev/null ]; then
  echo "removing firefox..."
  killall firefox # without can cause error
  sudo apt-get remove --purge firefox
fi

# the npm prefix
sudo chown -R $(whoami) /usr/local/{lib, bin, share}
