call pathogen#infect()

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"Let's automatically set our working directory to the current file
set autochdir

syntax enable
set sw=2 " no of spaces for indenting
set ts=2 " show \t as 2 spaces and treat 2 spaces as \t when deleting, etc..

" Let's wrap on words
set wrap
set linebreak

" Let's use a nice font
set guifont=Monaco:h13
set linespace=2

filetype plugin indent on
let g:Tex_ViewRule_pdf = 'Skim'
let g:Tex_CompileRule_pdf = 'xelatex $*'

if has("autocmd")

	filetype indent on
	" Markdown settings
	au BufNewFile,BufRead *.txt   set filetype=mkd
	au FileType text,markdown,mkd setlocal ai formatoptions=tcqn nofen spell 
	 au FileType text,markdown,mkd setlocal formatlistpat=^\\s*[0-9-]\\+[\\]:.)}\\t\ ]\\s*
	" comments=n:>,fb:-  
	au FileType text,markdown,mkd setlocal ts=3 sw=3 tw=70 nojoinspaces

	" Ruby settings
	au FileType ruby colorscheme desert

endif

augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcq comments=n:>
augroup END

" Automatically indent when adding a curly bracket, etc.
set smartindent

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=999

" Use UTF-8.
set encoding=utf-8

" Set color scheme that I like.
" if has("gui_running")
"    colorscheme desert
" endif

" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

" Show line number, cursor position.
set ruler

" Display incomplete commands.
set showcmd

" Search as you type.
set incsearch

" Ignore case when searching.
set ignorecase

" Show autocomplete menus.
set wildmenu

" Show editing mode
set showmode

" Error bells are displayed visually.
set visualbell

" Open each buffer in it's own tab
" :au BufAdd,BufNewFile,BufRead * nested tab sball  

" My custom key mappings
let mapleader = ","
map <leader>m = :set ft=mkd
map <leader>vrc = :tabedit ~/.vimrc
" Map backtick (`) to switch to normal mode
imap ` <esc>

" Some experimental vim mappings
let b:surround_{char2nr("i")} = "*\r*"
let b:surround_{char2nr("s")} = "**\r**"
"surround current word with single asterisks
nmap <leader>i viwSiW
imap <leader>i <ESC>viwSiWi
"surround current word with double asterisks
nmap <leader>b viwSsW
imap <leader>b <ESC>viwSsWi
