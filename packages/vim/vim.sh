#!/bin/bash

# this function copy's the files to ~
copyVimFiles() {
  if [ -f ./.vimrc ] && [ -d ./.vim ]; then
    cp -f ./.vimrc ./.vim ~
    echo -e "\x1B[0;32m [*] Vim is ready to go \x1B[0m"
  else
    echo -e "\x1B[0;31m [*] Sorry somthing went wrong \x1B[0m"
  fi
}

# check if vim is installed
if type vim >/dev/null 2>/dev/null; then
  # check if there isn't already a vim setup
  if [ -d ~/.vim ] && [ -f ~/.vimrc ]; then
    while true; do
      # ask to overwrite
      read -r -p "There is all ready a vim setup do you want a to overwrite it? [Y/n] " reply
      case $reply in
	[Yy])
	  copyVimFiles
	  break
	  ;;
	[Nn])
	  echo "Abourt."
	  break
	  ;;
	*)
	  echo "Try again."
	  ;;
      esac
    done
  else
    copyVimFiles
  fi
else
  echo -e "\x1B[1;31mVim\x1B[0m is not installed please try to reinstall \x1B[0m"
fi

unset -f copyVimFiles