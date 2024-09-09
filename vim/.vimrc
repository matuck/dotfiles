let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
 endif

set number
set hidden
set modeline
set modelines=10

call plug#begin()
Plug 'dense-analysis/ale'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'gcmt/taboo.vim'
Plug 'yggdroot/indentline'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'matuck/vim-ansible-vault', { 'for': ['yaml', 'yaml.ansible'] }
call plug#end()

let g:taboo_tab_format=" %r%m%I "
let g:ale_completion_enabled = 1
" nerdtree hotkeys
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
set showtabline=2
let g:NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1
set colorcolumn=80
let g:NERDSpaceDelims = 1
set foldlevel=99
nnoremap <C-s> :split<CR>
nnoremap <C-n> :vsplit<CR>
