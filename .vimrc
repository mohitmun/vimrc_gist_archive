" wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
syntax on

set number
set tabstop=2 shiftwidth=2 expandtab

" Start NERDTree
autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p

"below command closes nerdtree if now files left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set updatetime=100
let g:gitgutter_diff_base = 'HEAD'

"Always show current position
set ruler

" Highlight search results
"set hlsearch

" Show matching brackets when text indicator is over them
set showmatch 

"" Makes search act like search in modern browser
set incsearch
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

