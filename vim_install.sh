#!/bin/bash

# this function copy's the files to $HOME and installs vim-plug
installVimFiles() {
    # copy the files to to homedirectory
    # coping the .vim folder en .vimrc
    if [ -f ./.vimrc ] && [ -d ./.vim ]; then
        cp -f -r ./vim/.vimrc ./.vim $HOME/test
        # install vim-plug
        # https://github.com/junegunn/vim-plug
        curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        # create a plugged folder
        [ ! -d $HOME/.vim/plugged ] && mkdir $HOME/.vim/plugged

        echo -e "\n\x1B[0;32m [*] \x1B[0mVim is ready to go\n"
        echo -e "\x1b[0mOpen vim and tpye \x1B[0;31m:PlugInstall\x1B[0m to install the plugin's"
    else
        echo -e "\x1B[0;31m [*] \x1B[0mSorry somthing went wrong"
    fi
}

# check if vim is installed
if type vim >/dev/null 2>/dev/null; then
    # check if there isn't already a vim setup
    if [ -d $HOME/.vim ] && [ -f $HOME/.vimrc ]; then
        while true; do
            # ask to overwrite
            read -r -p "There is all ready a vim setup do you want a to overwrite it? [Y/n] " reply
            case $reply in
                [Yy])
                    installVimFiles
                    break;;
                [Nn])
                    echo "Abourt."
                    break;;
                *)
                    echo "Try again."
                    break;;
            esac
        done
    else
        installVimFiles
    fi
else
    echo -e "\x1B[1;31mVim\x1B[0m is not installed please try to reinstall \x1B[0m"
fi

unset -f installVimFiles