call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
"colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

"emmet
let g:user_emmet_leader_key=','

syntax on
colorscheme dracula

set background=dark
set tabstop=4
set expandtab
set number
set hlsearch
set incsearch

"mapings
map <C-n> :NERDTreeToggle <CR>
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>


function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction






