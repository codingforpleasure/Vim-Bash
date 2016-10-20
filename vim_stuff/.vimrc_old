"unmap
":ino <left> <Nop>
"ino <right> <Nop>
"ino <up> <Nop>
"ino <down> <Nop>


" Avoid seeing the annoying Warning message 'E37: No write since last change (add ! to override)'
set hidden

" **** SingleCompile ****
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>


set backspace=indent,eol,start

" **** Color Scheme ****

	set t_Co=256		" Essential: support 256 colors in Lion terminal
	colorscheme molokai	"

	set scrolloff=3		" keep 3 lines when scrolling
	syntax on		"  
	set ls=2		" Always show status line + command-lline
	set hlsearch		" Highlight search
	set incsearch		" do incremental searching
	set ruler		" show the cursor position all the time
	set title		" show title in console title bar

" enable Spell checker
"set spell spelllang=en_us


" **** Text, tab and indent related **** 
	set shiftwidth=2
	set tabstop=2
	set smarttab

	set lbr			" linebreak
	set tw=500		" textwidth
	set wmh=0		" window minimum height
	 
	set ai    		"Auto indent
	set si			"Smart indet
	set wrap		"Wrap lines

" show current mode
	set showmode

"

" **** Enable filetype plugin ****
	filetype on
	filetype indent on
	filetype plugin on
	set modeline
	set number		" show the line number of each line


" **** set wildmenu ****
	set wildmode=longest:full:list
	set wildmenu

" Runtime Path Manipulation (Pathogen) (https://github.com/tpope/vim-pathogen)

runtime bundle/vim-pathogen/autoload/pathogen.vim

" **** To disable a plugin, add it's bundle name to the following list **** 
" let g:pathogen_disabled = []
" call add(g:pathogen_disabled, 'SingleCompile')
" *************************************************************************
"
execute pathogen#infect()

" Now any plugins you wish to install can be extracted to a subdirectory under ~/.vim/bundle, and they will be added to the 'runtimepath'. Observe:
" cd ~/.vim/bundle && \
" git clone git://github.com/tpope/vim-sensible.git
" Now sensible.vim is installed.



"argument for pyclewn (gdb hotkeys)
" prefix to all gdb commnds would d (stands for debug),
" moreover the window position is on the right side
"
let g:pyclewn_args = "--args=-q --window=right --prefix=D"
"let g:pyclewn_args = "--prefix=d"

"edit/ the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>

" Gil's hotkey For inserting debug mode
"--window=right , vertical resize 130 it the length of the active windows

""SHOULD FIX->>>  
"map <c-d> :Pyclewn <CR> :Dfile %< <CR> :vertical resize 110<CR> :Dmapkeys <CR> :Dshell setsid xterm -e inferior_tty.py & <CR> :Dset inferior-tty /dev/pts/12 <CR> :Dset enviroment TERM = xterm <CR>

map <c-d> :Pyclewn <CR> :Dfile %< <CR> :vertical resize 110<CR> :Dmapkeys <CR>
"Should be dalay!!!!"
map <c-f> :Dshell setsid xterm -e inferior_tty.py & <CR> 
"should be delay here to!! moreover the number always change so it's not goood!!!
map <c-g>:Dset inferior-tty /dev/pts/12 <CR> :Dset enviroment TERM = xterm <CR>

"map <c-f> :Dshell setsid xterm -e inferior_tty.py & <CR> 

" first step: save the recent modification in source code.
" second step: clean terminal screen.
" third step: compile with g flag for storing the symbols in binary file for debugging with gdb.
" " ""<" removes extension and dot (foo.c => foo), then "%<" is file name without extension.

map <F3> :w <CR> :!clear <CR> :!gcc -g % -o %< && ./%< <CR>
"map <F2> :echo 'Current time is ' . strftime('%c')<CR>
"
" Setting breakpoint where the cursor appears. i
" expands(%:p) resolvs to full path including file name.
" line(".") gives us the currsor line number.
"
" I assume the Pyclewn app is already running otherwise those key strokes would not work

"map <F4> :exe "Drun" <CR> 
"map <F5> :exe "Dbreak " . expand("%:p") . ":" . line(".") <CR> 
"map <f6> :exe "Dnext" <CR>
"map <F7> :exe "Dprint " . expand("<cword>") <CR>

map <F2> : "Welcome Amigo" <CR>



"-move between windows-----------------------------------
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
"move between windows
nnoremap <Tab> <C-W>w
"move between windows backwards
nnoremap <S-Tab> <C-W>W
"-----------------------------------------------------------------------------
"" Fix constant spelling mistakes (set the abbreviation only for insert mode)
"-----------------------------------------------------------------------------
iab Acheive    Achieve
iab acheive    achieve
iab Alos       Also
iab alos       also
iab Aslo       Also
iab aslo       also
iab Becuase    Because
iab becuase    because
iab Bianries   Binaries
iab bianries   binaries
iab Bianry     Binary
iab bianry     binary
iab Charcter   Character
iab charcter   character
iab Charcters  Characters
iab charcters  characters
iab Exmaple    Example
iab exmaple    example
iab Exmaples   Examples
iab exmaples   examples
iab Fone       Phone
iab fone       phone
iab Lifecycle  Life-cycle
iab lifecycle  life-cycle
iab Lifecycles Life-cycles
iab lifecycles life-cycles
iab Seperate   Separate
iab seperate   separate
iab Seureth    Suereth
iab seureth    suereth
iab Shoudl     Should
iab shoudl     should
iab Taht       That
iab taht       that
iab Teh        The
iab teh        the

"set tags+=tags,/home/gil/mySourceCode/Userspace_workspace/tags
"The correct way to do it: it means look for a tags file in the directory of the current file, then upward until /  (root)
set tags=./tags;,tags;


"cscope settings

"if has("cscope")  && filereadable("/usr/local/bin/cscope")
"	set csprg=/usr/local/bin/cscope
"	set csto=0
"	set cst
"	set nocsverb
"	if filereadable("/home/gil/kernel_src_3.15.2/linux-3.15.2/cscope_data_base/cscope.out")
"	if filereadable("/home/gil/database_cache_for_source_code_autocomplete/cscope.out")
"		cs add /home/gil/database_cache_for_source_code_autocomplete
"	endif
"	set csverb
"endif
"if filereadable("")

"echo "Gilfefwdgsa"

" Using 'CTRL-backslash' then a search type makes the vim window
" " split horizontally, with search result displayed in the new window.
"
"nmap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>

" tagbar plugin setting open Tagbar only for specific filetypes, not for all of the supported ones (c and cpp files only)
let g:tagbar_width = 50
autocmd FileType c,cpp nested :TagbarOpen

"OmniCppComplete 
let OmniCpp_NamespaceSearch = 1 
let OmniCpp_GlobalScopeSearch = 1 
let OmniCpp_ShowAccess = 1 
let OmniCpp_MayCompleteDot = 1 
let OmniCpp_MayCompleteArrow = 1 
let OmniCpp_MayCompleteScope = 1 
let OmniCpp_ShowPrototypeInAbbr = 1
