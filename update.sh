while true; do
    # asking the question 
    echo -e "\x1B[0;33m" 
    read -r -p "Do you want to change the repo dotfiles with your current dotfiles? [Y/n] " resp
    echo -e "\x1B[0m" # white

    case $resp in
        [yY])
            # he said yes
            echo -e "\x1B[0;33m [*] \x1B[0mCopy files to ./dfiles"
            for file in .{bash_profile,bashrc,bash_prompt,aliases,exports,functions,extra}; do
                # moving the files
                cp -f $HOME/${file} ./dfiles/${file}
                if [ $? -eq 0 ] # check if copied worked
                then
                    echo -e "\x1B[0;32m [*] \x1B[0mAllons-y copied ${file}!"
                else 
                    echo -e "\x1B[0;31m [*] \x1B[0m Somthing went wrong, didn't copied ${file}"
                fi
            done
            break;;
        [nN])
            # he said no
            echo -e "\x1B[0;31m [*] \x1B[0mThese aren't the droids we're looking for, move along..."
            break;;
        *) 
            # he said idk, so repeat the question
            echo -e "\x1B[0;33m [*] \x1B[0mWhat did you say? Try again please! [Y/n]"
            ;;
    esac
done
