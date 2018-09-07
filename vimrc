set nocompatible              " be iMproved, required
"filetype off
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'leafgarland/typescript-vim'
Plugin 'quramy/tsuquyomi'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

syntax on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

"tern stuff
let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1

set ts=2 sts=0 sw=2 noexpandtab
set number
nmap <leader>l :set list!<CR>

set ttyfast
set mouse=a
set ttymouse=xterm2
set term=screen-256color

nnoremap <F8> :SyntasticToggleMode<CR>
nnoremap <F9> :IndentGuidesToggle<CR>
nnoremap <F12> :CtrlP .<CR>

vmap \ :!xclip -f -sel clip<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
set ttimeoutlen=50

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_typescript_tsc_args = "-t ES5 -m commonjs --experimentalDecorators --emitDecoratorMetadata --sourceMap true --moduleResolution node"

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
"let g:typescript_indent_disable = 1

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] 

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

set background=dark
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

set guitablabel=\[%N\]\ %t\ %M 

au BufRead,BufNewFile *.ts  setlocal filetype=typescript

map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>

set swapfile
set dir=~/tmpvim

:command qw w
:command W w
:command Q q
:command Wq wq
:command WQ wq
:command Qa qa
:command WQa wqa
:command Wqa wqa
:colorscheme gruvbox
