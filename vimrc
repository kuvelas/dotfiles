set nocompatible              " be iMproved, required
"filetype off
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
"Plugin 'flazz/vim-colorschemes'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'leafgarland/typescript-vim'
Plugin 'quramy/tsuquyomi'
Plugin 'Valloric/YouCompleteMe'
Plugin 'stanangeloff/php.vim'
Plugin 'krasjet/auto.pairs'
Plugin 'matchit.zip'
Plugin 'alvan/vim-closetag'
Plugin 'roxma/vim-paste-easy'
Plugin 'crusoexia/vim-monokai'
Plugin 'morhetz/gruvbox'


" Airline
let g:airline_theme='luna'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#show_splits = 1 
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'


set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

call vundle#end()

syntax on

set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

"tern stuff
let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1

set ts=2 sts=2 sw=2 expandtab
"set ts=2 sts=0 sw=2 noexpandtab
set number
nmap <leader>l :set list!<CR>

set ttyfast
set mouse=a
set ttymouse=xterm2
set term=screen-256color

nnoremap <F8> :SyntasticToggleMode<CR>
nnoremap <F12> :CtrlP .<CR>

vmap \ :!xclip -f -sel clip<CR>


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

" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

set background=dark
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

set guitablabel=\[%N\]\ %t\ %M 

au BufRead,BufNewFile *.ts  setlocal filetype=typescript

no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP


"auto center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"fix typos
iabbr ture true
iabbr flase false

set swapfile
set dir=~/tmpvim

:command W w
:command Q q
:command Wq wq
:command WQ wq
:command Qa qa
:command WQa wqa
:command Wqa wqa
":colorscheme monokai
"


let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_number_column = 'bg1'
:colorscheme gruvbox
