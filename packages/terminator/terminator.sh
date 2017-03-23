#!/bin/bash

if [ ! -d ~/.config/terminator/ ]; then 
  mkdir ~/.config/terminator
fi

sudo cp ./config ~/.config/terminator/
