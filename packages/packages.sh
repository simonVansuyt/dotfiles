#!/bin/bash

# upadate and upgrade
# apt-get update
# apt-get upagrade

packages=('vim' 'git-all' 'chromium-browser' 'xbacklight' 'xbindkeys')

for pack in "${packages[@]}"; do
  # install packages with apt-get
  apt-get install $pack
  
  # check if there is a extra  configuration for packge
  [ -f "./${pack}/${pack}.sh" ] && source "./${pack}/${pack}.sh"
done
