"set et
set sw=4
set tabstop=4
set smarttab
set smartindent
set nocompatible
set autoindent
set shiftround
set showmode
set showcmd
set t_Co=256
syn on
syntax enable
set gfn=Inconsolata\ 9
"set lines=45 columns=90
set number
set ruler 
set guioptions-=T 
"colorscheme darkspectrum
"set cursorline

if has("gui_running")
	colorscheme Tomorrow
	set background=light
else 
	set background=dark
	colorscheme grb256
endif
