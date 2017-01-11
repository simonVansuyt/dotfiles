#!/bin/bash
if type vim >/dev/null 2>/dev/null; then
  cp -f .vimrc .vim ~
  echo -e "Vim is ready to go"
fi