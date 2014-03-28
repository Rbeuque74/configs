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
set laststatus=2
colorscheme grb256
set cursorline
set backspace=indent,eol,start
map <Down> gj
map <Up> gk
set t_Co=256

set exrc
set secure

"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"²let g:rainbow_active = 1

let s:ocamlmerlin=substitute(system('opam config var share'),'\n$','','''') .  "/ocamlmerlin"
execute "set rtp+=".s:ocamlmerlin."/vim"
execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
