#!/bin/bash
# this script makes a backup of the dotfiles and install the new
# backup current files
while true; do
    # asking the question 
    echo -e "\x1B[0;33m" 
    read -r -p "Do you want to backup the current  ${file}? [Y/n] " resp
    echo -e "\x1B[0m" # white

    case $resp in
        [yY])
            # he said yes
            echo -e "\x1B[0;33m [*] \x1B[0mCopy files to ~/.backup"
            # check if there isn't exist a backup folder
            if [ ! -d "~/.backup" ]
            then
                # Create a .backup file
                echo -e "Creating a the directory ~/.backup"
                mkdir ~/.backup
            fi
            for file in .{bash_profile,bashrc,bash_prompt,aliases,exports,functions,extra}; do
                # moving the files
                cp -f ~/${file} ~/.backup/${file}
                echo -e "\x1B[0;32m [*] \x1B[0mAllons-y copied ${file}!"
            done
            break;;
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
# moving the files to homedirectory
for file in .{bash_profile,bashrc,bash_prompt,aliases,exports,functions,extra}; do
    # adding while so you don't skip some important files
    while true; do
        # asking the question 
        echo -e "\x1B[0;33m" 
        read -r -p "Do you want to overwrite ${file}? [Y/n] " resp
        echo -e "\x1B[0m" # white

        case $resp in
            [yY])
                # he said yes
                echo -e "\x1B[0;32m [*] \x1B[0mAllons-y, Geronimo!"
                # moving the file
                cp -f ./${file} ~/${file}
                break;;
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

source ~/.bash_profile
