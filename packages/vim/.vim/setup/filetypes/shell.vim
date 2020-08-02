au BufNewFile,BufRead ".sh set syntax=sh

au FileType sh noremap <leader>r :w!<CR>:!./%<CR>