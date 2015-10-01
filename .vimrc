" vundle
set nocompatible              " be iMproved, required         
filetype off                  " required 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
  
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'sjl/badwolf'
Plugin 'dyng/ctrlsf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'slim-template/vim-slim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" 
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"   
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
    
    
" vim 
set noswapfile
set tabstop=2 shiftwidth=2 expandtab
    
nnoremap th  :tabfirst<CR>     
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>   
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

xnoremap p pgvy

" nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup = 1

" ctrlsf
let g:ctrlsf_position = 'right'
let g:ctrlsf_auto_close = 0
