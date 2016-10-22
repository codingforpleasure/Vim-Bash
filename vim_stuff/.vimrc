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
Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


let g:ycm_server_python_interpreter = '/usr/bin/python'

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

" Highlight all search pattern matches
set hlsearch

" Find the current line quickly
set cursorline 


"ruler is displayed on the right side of the status line at the bottom of
"the window:
set ruler 

set showmode

set shell=/bin/bash

set laststatus=2
set ttimeoutlen=50
"airline
"let g:airline_theme="powerlineish"
"let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

let g:skeleton_template_dir = "~/.vim/bundle/vim-skeleton/my-templates"

" ******* ConqueGDB settings *******
" 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_Color = 2         
" close conque when program ends running
let g:ConqueTerm_CloseOnEnd = 1    
" display warning messages if conqueTerm is configured incorrectly
let g:ConqueTerm_StartMessages = 0 



 " ******* NERDTree settings *******
let NERDTreeShowHidden=1


" If, however, you're annoyed by the fact that the cursor always starts in
"  the NERDTree window, you can add a second autocommand that will move the
"   cursor into the main window:
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p



" Vim list feature can be used to reveal hidden characters, such as 
" tabstops and newlines. I'll customize the appearance of these characters,
" use the same symbols as TextMate for tabstops and EOL:
set listchars=tab:\|\ ,eol:¬
" Enabling feature during startup:¬
set list

" HotKeys:
" set <leader>
let mapleader=","

" opens vimrc
nnoremap <leader>v :e ~/.vimrc<CR>
" opens NERDtree
nmap <leader>ne :NERDTree<cr>

" Kernel coding style 80 column limit:
set colorcolumn=80

"Setting up every time I open a Makefile It would recognized as make type.
"This line was added for the snippet
au BufNewFile,BufRead Makefile set filetype=make

"Ack hotkeys:
" 1) "Ctrl + \"  - Opens the the definition in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" For ctags: 

" This will look in the current directory for "tags", and work up the
" tree towards root until one is found. IOW, you can be anywhere in your
" source tree instead of just the root of it.
set tags=./tags;/

" When open a new file remember the cursor position of the last editing
if has("autocmd")
         " When editing a file, always jump to the last cursor position
                 autocmd BufReadPost * if line("'\"") | exe "'\"" | endif
endif

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


" folding settings
"setlocal foldmethod=indent
"setlocal foldmethod=syntax
setlocal foldmethod=manual

nmap <F8> :TagbarToggle<CR>

" Command abbreviations:
ca wq! wqa!
ca q! qa!

" Copy text from vim to system clipboard
" need to install gvim/vim-gnome, the default vim can't interface with
"  X clipboard:
set clipboard=unnamedplus
" For vim airline, setting up the correct symbols:
let g:airline_powerline_fonts = 1

