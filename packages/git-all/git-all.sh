#!/bin/bash

if [ -f ~/.extra ]; then
  echo -e "\x1B[1;33m[GIT USER]\x1B[0m"
  read -rp "What is your user.name? " name
  read -rp "What is your user.email? " email

  # add the info to your .extra folder
  # indentation can cause error
cat >> ~/.extra <<-EOF

# git user configuration
GIT_AUTHOR_NAME="${name}"
GIT_COMMITTER_NAME="\$GIT_AUTHOR_NAME"
git config --global user.name "\$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="${email}"
GIT_COMMITTER_EMAIL="\$GIT_AUTHOR_EMAIL"
git config --global user.email "\$GIT_AUTHOR_EMAIL"
EOF

  echo -e "Your git username and email is kept in \x1B[1;31m~/.extra\x1B[0m"
  source ~/.extra
fi
