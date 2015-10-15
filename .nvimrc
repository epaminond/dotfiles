" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'dyng/ctrlsf.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'slim-template/vim-slim.git'
NeoBundle 'badwolf'
NeoBundle 'bling/vim-airline'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
" NeoBundleCheckPlugin 'scrooloose/nerdtree'

" NVIM
set noswapfile
set tabstop=2 shiftwidth=2 expandtab
set clipboard+=unnamedplus
set number

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

syntax on
colorscheme badwolf

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" move line
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

" paste multiple times
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
