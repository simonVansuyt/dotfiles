#!/bin/bash

source "dfiles/dfiles.sh"
source "packages/packages.sh"

# ask to kill firefox and remove
if [ command -v firefox 2> /dev/null ]; then
  echo "removing firefox..."
  killall firefox # without my cause error
  sudo apt-get remove --purge firefox
fi
