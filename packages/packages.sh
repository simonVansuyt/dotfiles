#!/bin/bash

packages=()

for pack in packages; do
  sudo apt-get install $pack
  
  # check if there is a extra  configuration for packge
  $packfolder="${pack}/${pack}"
  [ -f $packfolder ] && exec $packfolder 
done