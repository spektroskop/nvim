let g:mapleader = "\<space>"
let g:vimsyn_embed= 'l'
let &showbreak="» "
let &undodir = stdpath('data').'/undo'
let @/ = ""

"""

syntax on
filetype plugin indent on

"""

lua <<end
  require 'config.leader'
end

"""

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
colorscheme gruvbox
set background=dark

"""

highlight Normal guibg=none
highlight VertSplit guibg=#101010 guifg=#101010
highlight StatusLineNC guifg=#101010
highlight StatusLine guifg=#101010

"""

augroup vimrc
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
  autocmd BufWritePre * v/\_s*\S/d
  autocmd FileType * setlocal formatoptions-=cro
  autocmd FileType * setlocal nocursorline
  autocmd TermOpen term://* startinsert
  autocmd TermClose term://* Sayonara
  autocmd CursorHold * echo
augroup END

"""

set mouse=a
set autoread
set backspace=indent,eol,start
set expandtab smarttab tabstop=2 softtabstop=2 shiftwidth=2
set formatoptions+=j
set hidden
set incsearch ignorecase smartcase hlsearch wrapscan
set lazyredraw
set nolist
set nowrap linebreak breakindent
set ruler noshowcmd noshowmode laststatus=2
set scrolloff=1 sidescrolloff=2
set shortmess=filnxtToOIc
set splitright splitbelow
set termguicolors
set textwidth=0 wrapmargin=0
set undofile noswapfile
set updatetime=2500 timeoutlen=500
set winwidth=5 winminwidth=5 winheight=1 winminheight=1

"""

map - :lua require'junkbox.telescope'.file_browser()<cr>

command! W w
command! Q q
command! WQ wq
command! Wq wq

" nnoremap gb :<c-u>exec (v:count ? 'b '.v:count : 'bn')<cr>
" nnoremap gB :<c-u>exec (v:count ? 'b '.v:count : 'bp')<cr>
" nnoremap gl :ls<cr>:b<space>
" nnoremap gv :ls<cr>:vertical sb<space>

tnoremap <Esc> <C-\><C-n>

nmap <c-s> :update<cr>

nmap Q <nop>
map <S-k> k

nmap <c-j> <c-w>w
nmap <c-k> <c-w>W

nnoremap <cr> <esc>
vnoremap <cr> <esc>gV
onoremap <cr> <esc>
inoremap <cr> <esc>`^

xnoremap p pgvy
xnoremap P Pgvy

" nmap <leader>j %! jq .<cr>
" vmap <leader>64 c<c-r>=system('base64 --decode', @")<cr><esc>
