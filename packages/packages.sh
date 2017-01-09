#!/bin/bash

# upadate and upgrade
apt-get update
apt-get upagrade

packages=(
  'vim'
  'git-all'
)

for pack in packages; do
  # install packages with apt-get
  sudo apt-get install $pack
  
  # check if there is a extra  configuration for packge
  $packfolder="${pack}/${pack}"
  [ -f $packfolder ] && exec $packfolder 
done