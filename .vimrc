" The ultimate vimrc https://github.com/amix/vimrc 
" wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim and
" move it to ~/.vim/autoload and run :PlugInstall
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'terryma/vim-multiple-cursors' " https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'amix/vim-zenroom2'
" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
call plug#end()
syntax on

set number
set tabstop=2 shiftwidth=2 expandtab
set updatetime=100

" Start NERDTree

" autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
"below command closes nerdtree if now files left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" End NERDTree

let g:gitgutter_diff_base = 'HEAD'

"Always show current position
set ruler

" Highlight search results
"set hlsearch
set ignorecase
" Show matching brackets when text indicator is over them
set showmatch 

"" Makes search act like search in modern browser
set incsearch

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" If a file is changed outside of vim, automatically reload it without asking	
set autoread	
" Don't make backups at all	
set nobackup	
set nowritebackup
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" copied previous line word by word https://web.archive.org/web/20160429070600/http://vim.wikia.com/wiki/Duplicate_previous_line_word_by_word# 
nmap ,c @<Esc>kyWjP<BS>
