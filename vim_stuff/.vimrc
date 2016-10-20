" For vundle I have added the following lines:
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/c.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'noahfrederick/vim-skeleton'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'tpope/vim-fugitive'
"For installing snipmate i need few more packages:
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Holds the actuall snippets:
"Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enable mouse
set mouse=a

" syntax highlighting
syntax on
"colorscheme autumn
colorscheme molokai
let g:rehash256 = 1
let g:molokai_original = 1
" Adding line numbers
set number

"Highlight all search pattern matches
set hls

"ruler is displayed on the right side of the status line at the bottom of
"the window:
set ruler 

set shell=/bin/bash

set laststatus=2
set ttimeoutlen=50
"airline
"let g:airline_theme="powerlineish"
"let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

let g:skeleton_template_dir = "~/.vim/bundle/vim-skeleton/my-templates"

"ConqueGDB settings:
" 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_Color = 2         
" close conque when program ends running
let g:ConqueTerm_CloseOnEnd = 1    
" display warning messages if conqueTerm is configured incorrectly
let g:ConqueTerm_StartMessages = 0 


let NERDTreeShowHidden=1



" Vim list feature can be used to reveal hidden characters, such as 
" tabstops and newlines. I'll customize the appearance of these characters,
" use the same symbols as TextMate for tabstops and EOL:
set listchars=tab:\|\ ,eol:¬
" Enabling feature during startup:¬
set list

" set <leader>
let mapleader=","
" open vimrc
nnoremap <leader>v :e ~/.vimrc<CR>

" Kernel coding style 80 column limit:
set colorcolumn=80

"Setting up every time I open a Makefile It would recognized as make type.
"This line was added for the snippet
au BufNewFile,BufRead Makefile set filetype=make
