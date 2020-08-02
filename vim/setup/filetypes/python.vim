" set syntax to python when .py is loaded
au BufNewFile,Bufread *.py set syntax=python

" Use ,r to save and run current python script
au FileType python noremap <leader>r :w!<CR>:!python3 %<CR>
" Use ,r to run current python script
au FileType python noremap <leader>R :!python3 %<CR>