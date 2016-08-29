autocmd Filetype ruby nnoremap <buffer><Leader>pf :CtrlP<CR>
autocmd Filetype ruby nnoremap <buffer><Leader>mh :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<CR>
autocmd Filetype ruby nnoremap <buffer><Leader>mf :!rubocop % -a<CR>
