#!/bin/bash

# moving the files to homedirectory
for file in .{bash_profile,bashrc,bash_prompt,aliases,exports}; do
  dfile=~/${file}
  # adding while so you don't skip some importan files
  while true; do
    # asking the question 
    echo -e "\x1B[0;33m"
    read -r -p "Do you want to overwrite ${file}? [Y/n] " resp
    echo -e "\x1B[0m"

    case $resp in
      [yY])
	# he said yes
	echo -e "\x1B[0;32m [*] \x1B[0mAllons-y, Geronimo!"
	# moving the file
	mv -f dfiles/${file} ${dfile}
	break
	;;
      [nN])
	# he said no
	echo -e "\x1B[0;31m [*] \x1B[0mThese aren't the droids we're looking for, move along..."
	break;;
      *) 
	# he said idk, so lets repeat
	echo -e "\x1B[0;33m [*] \x1B[0mWhat did you say? Try again please! [Y/n]"
	;;
    esac
  done
done

[ -n ${PS1} ] && source ~/.bash_profile
