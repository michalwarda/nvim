call plug#begin('~/.nvim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'arkwright/vim-whiplash'
  Plug 'chriskempson/base16-vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'elixir-lang/vim-elixir'
  Plug 'haya14busa/incsearch.vim'
  Plug 'honza/vim-snippets'
  Plug 'jreybert/vimagit'
  Plug 'kchmck/vim-coffee-script'
  Plug 'mileszs/ack.vim'
  Plug 'mxw/vim-jsx'
  Plug 'neomake/neomake'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'pangloss/vim-javascript'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'slim-template/vim-slim'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-ruby/vim-ruby'
call plug#end()

source ~/.config/nvim/keybindings.vim

" SETTINGS

set dir=~/.tmp
set expandtab tabstop=2 shiftwidth=2
set nowrap
set number
set relativenumber
set timeoutlen=1000 ttimeoutlen=10
set wildignore+=*/node_modules/*,*/bower_components/*,*.so,*.swp,*.zip

" Backspace
set backspace=indent,eol,start

" Persistence
set noswapfile
set nobackup
set nowb

if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif


" colors
set t_Co=256

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
  hi Normal ctermbg=none
  highlight NonText ctermbg=none
endif

" airline
set laststatus=2

" NERDTree
let g:NERDTreeChDirMode = 2

" Ctrl-p
let g:ctrlp_working_path_mode = 'rw'

" vim-javasciprt
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

" strip-whitespace
autocmd BufWritePre * StripWhitespace

" ultisnips
let g:UltiSnipsExpandTrigger = "<c-e>"

" whiplash
let g:WhiplashProjectsDir = "~/Projects/"

" incsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" neomake
autocmd! BufWritePost,BufReadPost * Neomake

" -javascript
let g:neomake_javascript_enabled_makers = ['eslint']
function! NeomakeESlintChecker()
  let l:npm_bin = ''
  let l:eslint = 'eslint'

  if executable('npm')
    let l:npm_bin = split(system('npm bin'), '\n')[0]
  endif

  if strlen(l:npm_bin) && executable(l:npm_bin . '/eslint')
    let l:eslint = l:npm_bin . '/eslint'
  endif

  let b:neomake_javascript_eslint_exe = l:eslint
endfunction

autocmd FileType javascript :call NeomakeESlintChecker()

" -ruby
let g:neomake_ruby_enabled_makers = ['rubocop']

" ultisnips
let g:UltiSnipsExpandTrigger = "<c-e>"
