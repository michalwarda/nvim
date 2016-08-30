" New Hash syntax
autocmd Filetype ruby nnoremap <buffer><Leader>mh :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<CR>
" Rubocop Fix
autocmd Filetype ruby nnoremap <buffer><Leader>mf :!rubocop % -a<CR>
" Ruby guard terminal
autocmd Filetype ruby nnoremap <buffer><Leader>mt :bot split<CR>8<C-w>_:terminal<CR>guard<CR><C-\><C-n>
