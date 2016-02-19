"           My vimrc
"          Mina Habib
"
"      ++++++++++++++++++++++
"      + Twitter: NullGuru@ +
"      + Github : NullGuru@ +
"      ++++++++++++++++++++++
 
 

" =======================
" My plugins using Vundle
" =======================
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
call vundle#end()
 

" ================
" General Settings
" ================
set number
set background=dark
set tabstop=2
set shiftwidth=2
set expandtab
set showcmd
set hidden
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set noerrorbells
set nobackup
set noswapfile
set pastetoggle=<F2>
set cpoptions+=$
set virtualedit=all
syntax enable
colorscheme solarized
filetype off
filetype plugin indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set laststatus=2      "airline laststatus begin when no split
set statusline+=%#warningmsg#                  "for syntastic
set statusline+=%{SyntasticStatuslineFlag()}   "for syntastic 
set statusline+=%*                             "for syntastic 
 

" =======
" My LETs
" =======
let mapleader=" "
let &t_Co=256          "For fixing ubuntu terminal colors
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"
let g:neocomplcache_enable_at_startup = 1
let g:syntastic_always_populate_loc_list = 1    "for syntastic 
let g:syntastic_auto_loc_list = 1               "for syntastic 
let g:syntastic_check_on_open = 1               "for syntastic 
let g:syntastic_check_on_wq = 0                 "for syntastic 

" ==========
" My Mappins
" ==========
imap jk <Esc>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap j gj
nnoremap k gk
nnoremap <leader>tn :tabn<CR>
noremap <leader>tp :tabp<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>qa :qall<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>sn :set nu<CR>
nmap <silent> <leader>snn :set nonu<CR>
nmap <silent> <leader>/ :nohlsearch<CR>
nmap <silent> <leader>h <C-w>h
nmap <silent> <leader>l <C-w>l
nmap <silent> <leader>j <C-w>j
nmap <silent> <leader>k <C-w>k
nmap <silent> <leader>p :CtrlP<CR>
nmap <silent> <leader>pb :CtrlPBuffer<CR>
nmap <silent> <leader>ggt :GitGutterToggle<CR>
 
" ===============
" My Autocommands
" ===============
"autocmd VimEnter * NERDTree          "Temporary removing NERDTree at startup
"autocmd VimEnter * wincmd p          "Put the cursor at the edit window
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
