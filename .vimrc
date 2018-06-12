" GistID: 55140b5b9c723540883f823616575c58
"Constantly improve at vim
"  http://vimgolf.com
"  http://derekwyatt.org/vim/tutorials/advanced/
"https://statico.github.io/vim3.html
"https://www.reddit.com/r/vim/comments/8gmmk3/how_to_continue_to_improve_at_vim/
"Why
"  http://www.viemu.com/a-why-vi-vim.html	
"Headstart	
"  https://github.com/mhinz/vim-galore	
"  https://github.com/bpierre/switch-to-vim-for-good
"  http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/	
"  http://www.worldtimzone.com/res/vi.html	
"  https://danielmiessler.com/study/vim/	
"  http://learnvimscriptthehardway.stevelosh.com/	
"  https://github.com/learnbyexample/scripting_course/blob/master/Vim_curated_resources.md
"Tips	
"  http://nvie.com/posts/how-i-boosted-my-vim/	
"Terms	
"  https://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/	
"  1. Using vim-plug (https://junegunn.kr/2013/09/writing-my-own-vim-plugin-manager/	
"  https://sanctum.geek.nz/arabesque/buffers-windows-tabs/ (Buffers/windows/tabs) 	
"Vim as IDE http://vim.wikia.com/wiki/Use_Vim_like_an_IDE
"Key Learnings	
"  Read the fucking manual, :help is powerful	
"  Make life easier by vimrc	
"vimrcs	
"  https://github.com/amix/vimrc	
"  https://github.com/nvie/vimrc/blob/master/vimrc	
"  https://github.com/garybernhardt/dotfiles/blob/master/.vimrc	
"  https://github.com/mhinz/dotfiles/blob/master/.vim/vimrc	
"  https://github.com/junegunn/dotfiles/blob/master/vimrc
"CheatSheets	
"  https://gist.github.com/0xadada/1ea7f96d108dcfbe75c9	
"  https://devhints.io/vim	
"  http://www.viemu.com/vi-vim-cheat-sheet.gif The ultimate vimrc https://github.com/amix/vimrc
" The ultimate vimrc https://github.com/amix/vimrc 
" wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim and
" move it to ~/.vim/autoload and run :PlugInstall
" mkdir -p ~/.vim/undodir
" mkdir -p ~/.vim/backupdir
" mkdir -p ~/.vim/directory
"https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'ctrlpvim/ctrlp.vim
Plug 'Valloric/YouCompleteMe'
Plug 'terryma/vim-multiple-cursors' " https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'amix/vim-zenroom2'
" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'w0rp/ale'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim' " dependancy for gist-vim
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-ruby/vim-ruby'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'yuttie/comfortable-motion.vim'
Plug 'sjl/gundo.vim'
" https://vi.stackexchange.com/a/8224/15805
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'suan/vim-instant-markdown'
"fucks up disable cut logic
"Plug 'maxbrunsfeld/vim-yankstack'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug '907th/vim-auto-save'
Plug 'machakann/vim-highlightedyank'
Plug 'Raimondi/delimitMate'
Plug 'elzr/vim-json'
"Plug 'google/vim-searchindex' 
"removed this because its not compatible with is.vim
Plug 'osyo-manga/vim-anzu'
Plug 'simnalamburt/vim-mundo'
"Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'benmills/vimux'
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'
call plug#end()

source ~/.vim/cscope.vim

syntax on

set number
set tabstop=2 shiftwidth=2 expandtab
set updatetime=100

let g:gitgutter_diff_base = 'HEAD'

"Always show current position
set ruler

" Highlight search results
set hlsearch
set ignorecase
" Show matching brackets when text indicator is over them
set showmatch 

"" Makes search act like search in modern browser
set incsearch
set hidden


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
"nmap ,c @<Esc>kyWjP<BS>

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
map gb :Buffers<cr>

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
let g:gist_list_vsplit = 1

set nofoldenable    " disable folding

set foldlevelstart=20
map <C-p> :FZF<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
map <leader>nt :NERDTreeFocus<cr>

" autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
"below command closes nerdtree if now files left
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

 "http://vim.wikia.com/wiki/Use_Ctrl-O_instead_of_Esc_in_insert_mode_mappings
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l

map <leader>h <C-w><
map <leader>j <C-w>+
map <leader>k <C-w>-
map <leader>l <C-w>>

"http://vim.wikia.com/wiki/Map_semicolon_to_colon
map ; :
noremap ;; ;

"https://stackoverflow.com/questions/9051837/how-to-map-c-to-toggle-comments-in-vim?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa#comment11360335_9051932
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>
imap <C-_> <Esc><leader>c<Space>li
map <silent> <Leader><Leader> :nohlsearch<cr>
map <C-e> :noh<cr>

"http://vim.wikia.com/wiki/Avoid_the_escape_key
imap <leader>i <Esc>

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set undofile
inoremap jj <ESC>
cmap jj <ESC>
vmap ii <ESC>

"https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
set backupdir=~/.vim/backupdir//
set directory=~/.vim/directory//
set undodir=~/.vim/undodir// 

set clipboard^=unnamed

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \  {'options': '--delimiter : --nth 2..'}, 
  \   <bang>0)
map <leader>f :Rg<CR>

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
set completeopt-=preview
nnoremap <leader>ggs :GitGutterStageHunk<CR>
nnoremap <leader>ggp :GitGutterPreviewHunk<CR>
nnoremap <leader>ggu :GitGutterUndoHunk<CR>
nnoremap <leader>gst :Gstatus<CR>

"https://shapeshed.com/vim-netrw/
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
  "autocmd!
  "autocmd VimEnter * :Vexplore
"augroup END
set history=1000                      " Keep a bigger history of commands

" Fast editing and sourcing of `.vimrc`
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
":au BufAdd,BufNewFile * nested tab sball
nnoremap <leader>za zR
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>
"set iskeyword-=_
set ttimeoutlen=50
"set timeoutlen=500
let g:airline#extensions#tabline#enabled = 1
" close buffer when quitting
map <leader>q :bd<CR>
" understand below command
"autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
let g:ale_fixers = {
\   'java': ['google_java_format'],
\}
map <leader>c :w !colordiff -u % - 
"map <leader>h :exe printf('match IncSearch /\V\</Users/mohit/.vimrcs\>/', escape(expand('1'), '/\'))<CR>
autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
let g:auto_save = 1

vnoremap // y/\V<C-R>"<CR>

"http://howivim.com/2016/salvatore-sanfilippo/
vmap q <gv	
vmap <TAB> >gv 
"https://github.com/bpierre/dotfiles/blob/master/vimrc
"nnoremap <C-n> i<CR><ESC>
cmap w!! w !sudo tee > /dev/null %

"https://stackoverflow.com/a/597932/2577465
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
"https://stackoverflow.com/a/8397808/2577465
nmap , \

"https://stackoverflow.com/a/30423919/2577465
nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

set clipboard^=unnamed
nnoremap <leader>d "*d
nnoremap <leader>D "*D
vnoremap <leader>d "*d

let $FZF_DEFAULT_COMMAND = 'fd --type f'

map j gj
map k gk
map <leader>ms :MundoShow<CR>
map <leader>mh :MundoHide<CR>

"https://stackoverflow.com/questions/2744010/update-cscope-db-from-vim
map <leader>csr :!cscope -Rbq<CR>:cs reset<CR><CR>

"set hlsearch
"let g:incsearch#auto_nohlsearch = 1
""map / <Plug>(incsearch-nohl)
"map n  <Plug>(incsearch-nohl-n)
"map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)
"augroup vimrc-incsearch-highlight
  "autocmd!
  "autocmd CmdlineEnter [/\?] :set hlsearch
  "autocmd CmdlineLeave [/\?] :set nohlsearch
"augroup END