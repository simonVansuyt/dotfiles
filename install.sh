#!/bin/bash

for file in ./.{bash_profile,aliases,bash_prompt,exports}; do
  echo "Do you want to overwrite .${file}? [Y/n]"
  read condition

  case $condition in
    "Y")
      echo "[YES]"
      mv -f ./.${file} ~/.${file};;
    "n")
      echo "[NO]";;
  esac
done

