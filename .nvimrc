" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'rking/ag.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'slim-template/vim-slim.git'
NeoBundle 'badwolf'
NeoBundle 'bling/vim-airline'
NeoBundle 'kien/ctrlp.vim'

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
set autoread
set backupdir=~/.config/nvim/backups

let g:airline_powerline_fonts = 1
let g:gitgutter_realtime = 1
"let g:airline#extensions#tabline#enabled = 1

" Press i to enter insert mode, and ii to exit.
imap ii <Esc>

syntax on
colorscheme badwolf
hi TabLineSel ctermbg=Green
hi TabLine ctermbg=LightGrey ctermfg=Black

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
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" `ag` is a faster and better replacement for the standard `find`, let Unite use
" it if it exists and configure to properly use `.gitignore` or `.hgignore`
" files if those exist.
" To install `ag`: brew install ag
" or: https://github.com/ggreer/the_silver_searcher
if executable("ag")
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
