#!/bin/bash

ppa=(
  'gnome-terminator'
)
for repo in "${ppa[@]}"; do
  sudo add-apt-repository ppa:$repo
done

# upadate and upgrade
apt-get update
apt-get upagrade

packages=(
  'tasksel'
  'vim'
  'git-all'
  'chromium-browser'
  'xbacklight'
  'xbindkeys'
  'haskell-platform'
  'gnome-terminator'
)
for pack in "${packages[@]}"; do
  # install packages with apt-get
  apt-get install $pack
  
  # check if there is a extra  configuration for packge
  [ -f "./packages/${pack}/${pack}.sh" ] && source "./packages/${pack}/${pack}.sh"
done
