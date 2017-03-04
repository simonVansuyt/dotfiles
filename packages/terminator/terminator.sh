#!/bin/bash

if [ -f ~/.config/terminator/ ]; then 
  mkdir ~/.config/terminator
fi
sudo cp ./config ~/.config/terminator/
