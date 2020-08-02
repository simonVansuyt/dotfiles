" Basic setup for vim 
source ~/.vim/setup/basic.vim

" Use vim-plug for plugin manager
" Plugins are download in ~/.vim/plugged
call plug#begin('~/.vim/plugged')
" Vim-Airline
" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NERD Commenter
" Comment functions so powerful—no comment necessary.
Plug 'preservim/nerdcommenter'

" Goyo
" Distraction-free writing in Vim.
Plug 'junegunn/goyo.vim'

call plug#end()

" Plugin setup
source ~/.vim/setup/plugins/vim-airline.vim " vim-airline
source ~/.vim/setup/plugins/nerdcommenter.vim " nerdcommenter
source ~/.vim/setup/plugins/goyo.vim " goyo


" Filetype settings
source ~/.vim/setup/filetypes/shell.vim " shell .sh
source ~/.vim/setup/filetypes/python.vim " python .py

" Auto reload if .vimrc is changed
autocmd! bufwritepost .vimrc source %