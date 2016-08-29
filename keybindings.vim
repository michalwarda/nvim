" LEADER
let mapleader = "\<Space>"

" File management
nnoremap <Leader>q :q<CR>

" History jumping
nnoremap <Leader><Leader> <c-^>

" Window management
nnoremap <Leader>wv :vsp<CR>
nnoremap <Leader>ws :sp<CR>

" Window movement
nnoremap <Leader>ww <c-w><c-w>
nnoremap <Leader>wh <c-w>h
nnoremap <Leader>wj <c-w>j
nnoremap <Leader>wk <c-w>k
nnoremap <Leader>wl <c-w>l
nnoremap <Leader>wm :on<CR>

" Block jumping
nnoremap <Leader>bs [{
nnoremap <Leader>be ]}

" Dotfile management
nnoremap <Leader>fd :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>fD :e ~/.bashrc<CR>
nnoremap <Leader>fR :source ~/.config/nvim/init.vim<CR>
nnoremap <Leader>fb :e ~/.config/nvim/keybindings

" Search
map / <Plug>(incsearch-forward)
nnoremap <Leader>se :noh<CR>

" Ctrl-p
nnoremap <Leader>pf :CtrlP<CR>

" NerdTree
nnoremap <Leader>pt :NERDTreeToggle<CR>

" Plug
nnoremap <Leader>pi :PlugInstall<CR>

" NerdCommenter
" nnoremap <Leader>; <Leader>c<space>

" vim-fugitive
nnoremap <Leader>gs :Gstatus<CR><C-w>14+
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gF :Gpull<CR>
nnoremap <Leader>gp :Gpush<CR>

" Ack
nnoremap <Leader>/ :Ack!<Space>

" vim-better-whitespace
nnoremap <Leader>tw :ToggleWhitespace<CR>

" Terminal
nnoremap <Leader>tt :terminal<CR>
nnoremap <Leader>tv :vsp<CR><c-w>l:terminal<CR><c-\><c-n>
nnoremap <Leader>ts :sp<CR><c-w>k:terminal<CR><c-\><c-n>
tnoremap <Esc> <c-\><c-n>

source ~/.config/nvim/keybindings-ruby.vim
source ~/.config/nvim/keybindings-javascript.vim
