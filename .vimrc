" GistID: 55140b5b9c723540883f823616575c58
" The ultimate vimrc https://github.com/amix/vimrc 
" wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim and
" move it to ~/.vim/autoload and run :PlugInstall
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'terryma/vim-multiple-cursors' " https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'amix/vim-zenroom2'
" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim' " dependancy for gist-vim
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-ruby/vim-ruby'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
call plug#end()
syntax on

set number
set tabstop=2 shiftwidth=2 expandtab
set updatetime=100

" let g:gitgutter_diff_base = 'HEAD'

"Always show current position
set ruler

" Highlight search results
"set hlsearch
set ignorecase
" Show matching brackets when text indicator is over them
set showmatch 

"" Makes search act like search in modern browser
set incsearch

set backspace=indent,eol,start
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

" Mappings for moving lines up and down in all modes.
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

set mouse=a

" https://stackoverflow.com/a/5562707/2577465
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" https://superuser.com/a/189198/630985
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
set foldmethod=indent

" https://stackoverflow.com/a/360634/2577465
nnoremap <space> za
vnoremap <space> zf

let g:gist_get_multiplefile = 1
set nofoldenable    " disable folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
"below command closes nerdtree if now files left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif