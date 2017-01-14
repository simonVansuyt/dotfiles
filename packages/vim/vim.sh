#!/bin/bash
if type vim >/dev/null 2>/dev/null; then
  cp -f .vimrc .vim ~
  if [ -f ~/.vimrc ] && [ -d ~/.vim ]; then
    echo -e "Vim is ready to go"
  else
    echo -e "/x1B[0;32m Sorry somthing went wrong /x1B[0m"
  fi
fi