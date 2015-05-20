""""""""""""""""""""""""""""""
" rbeuque Vim Config - install procedure
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


""""""""""""""""""""""""""""""
" rbeuque Plugins load
""""""""""""""""""""""""""""""
"Git pluggin
Plugin 'tpope/vim-fugitive'
"Airline pluggin
Plugin 'bling/vim-airline'
"Syntax checker
Plugin 'scrooloose/syntastic'
"File explorer
Plugin 'scrooloose/nerdtree'
"F8 tag navigator
"please apt-get install exuberant-ctags before
Plugin 'majutsushi/tagbar'
"Go pluggin + coloration
Plugin 'fatih/vim-go'
" json highlighter
Plugin 'elzr/vim-json'
" trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'
" comment pluggin
Plugin 'scrooloose/nerdcommenter'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'Valloric/YouCompleteMe'


" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
""""""""""""""""""""""""""""""
" end rbeuque Plugins load
""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""
" rbeuque Configuration
""""""""""""""""""""""""""""""
set shell=/bin/bash
set et
set sw=4
set smarttab
set nocompatible
syn on
set gfn=Inconsolata\ 9
"set lines=45 columns=90
set number
set ruler 
set autoindent
set cindent
filetype on
filetype indent on
set laststatus=2
colorscheme grb256
set cursorline
set backspace=indent,eol,start
map <Down> gj
map <Up> gk
set t_Co=256

let g:airline#extensions#tabline#enabled = 1
nmap <F2> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
" en faisant [p, ca copie sans péter l'identation
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
" permet de sauvegarder en sudo sans avoir ouvert le fichier en sudo
command! -bar -nargs=0 Wsudo :silent exe "write !sudo tee % >/dev/null" | silent edit!


""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
"in order to reduce time that it takes for exiting insert mode airline
set ttimeoutlen=50
"let g:airline_theme = 'powerlineish'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

"quand on veut les symboles, il faut changer la font du shell (DejaVu sans Mono Powerline 9 https://github.com/powerline/fonts)
let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"


""""""""""""""""""""""""""""""
" syntastic (syntax checker)
""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1


""""""""""""""""""""""""""""""
" json Highlighter
""""""""""""""""""""""""""""""
let g:vim_json_syntax_conceal = 0


""""""""""""""""""""""""""""""
" PluginHelper
""""""""""""""""""""""""""""""
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

