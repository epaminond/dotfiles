set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'slim-template/vim-slim.git'
Plugin 'badwolf'
Plugin 'bling/vim-airline'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'tpope/vim-abolish'
Plugin 'matze/vim-move'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'yalesov/vim-emblem'
Plugin 'yaymukund/vim-rabl'
Plugin 'wakatime/vim-wakatime'
Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

runtime macros/matchit.vim

" NVIM
set noswapfile
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set clipboard+=unnamedplus
set number
set autoread
set backupdir=~/.config/nvim/backups
set list listchars=tab:▸\ ,eol:¬
set autoindent
set smartindent
set timeoutlen=500
set updatetime=500
set cursorline
set mouse=a

let g:airline_powerline_fonts = 1
let g:gitgutter_realtime = 1
let g:airline#extensions#tabline#enabled = 1

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

nnoremap tm :tabm +1<CR>
nnoremap tM :tabm -1<CR>

tnoremap <Esc> <C-\><C-n>

command W w

" move line
let g:move_key_modifier = 'C'

" paste multiple times
xnoremap p pgvy

" fix & command
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"ale
let g:ale_fixers = { 'javascript': ['prettier', 'eslint'] }
let g:ale_linters = { 'javascript': ['prettier', 'eslint'] }
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--no-semi --single-quote'
