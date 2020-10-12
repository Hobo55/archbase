"+++++++++++++++++++++++++++++++++
""	VIMRC
"+++++++++++++++++++++++++++++++++
runtime! archlinux.vim		" This line should not be removed as it ensures
" that various options are properly set to work with the Vim-related packages.

"===========================================================
"	Vundle settings
"===========================================================
set nocompatible					" be iMproved, required
filetype off                        " required

call plug#begin('~/.vim/plugged')   " reqired, all plugins after this line

  Plug 'junegunn/vim-plug'                  "

  "--------------- Status Line -------------------------
  Plug 'itchyny/lightline.vim'				" statusbar
  Plug 'itchyny/vim-gitbranch'				" git in stusbar

  "-------------  colorschemes  -------------------
  Plug 'HenryNewcomer/vim-theme-papaya'		" colorscheme
  Plug 'lucasprag/simpleblack'
  "-------------  Other  -------------------------
  Plug 'vimwiki/vimwiki'					" vimwiki
  Plug 'ap/vim-css-color'					" show hex colors in files

  "------------- editing/syntax	-----------------
  Plug 'JamshedVesuna/vim-markdown-preview'	" preview markdown
  Plug 'vim-python/python-syntax'           " Python highlighting

call plug#end()	" update &runtimepath, initialize plugin sysc0
filetype plugin indent on           " required
"filetype plugin on
"
" Manage PKGS In Native Vim instead of using plugins:
"----------------------
"packadd! nerdtree " ! for when you run vim --noplugin, won't add pkg.

"		Lightline plugin - # 2
"==========================================================
" :h g:lightline.colorscheme, to show lightline colorschemes
"	set colorscheme and add more
let g:lightline = {
    \ 'colorscheme': 'substrata',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'filetype', 'modified' ] ],
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name',
    \   'filetype': '%y',
    \ },
    \  'right': [ [ 'bufnum' ],
    \             [ 'column' ],
    \              [ 'lineinfo' ],
	  \				      [ 'absolutepath' ] ],
	  \ },
	  \ 'component': {
    \ 'absolutepath': '%F',
    \ 'lineinfo': '%l/%L',
    \ 'column': 'c:%c',
    \ },
    \ }

set laststatus=2			" include statusbar in vim
set t_Co=256				" set 256 colors if terminal supports it
set termguicolors           " enable true color in vim, if available in terminal
set noshowmode				" git rid of insert showing below
let g:rehash256 = 1

"==========================================================
"		choose a vim editor colorscheme
"==========================================================
"colorscheme focus-point                   " colorschemes
"colorscheme gruvbox
 "set background=dark      " for dark version
"colorscheme odyssey
colorscheme substrata
"==========================================================
" Cursor line   **set after colorschemes, or get overwritten
set cursorline
"set cursorcolumn
"" Highlight cursor/columnlines or let colorscheme do it
"highlight CursorLine cterm=bold guibg=#2b2b2b
""highlight CursorColumn cterm=bold guibg=#2b2b2b

"==========================================================
"		General settings
"==========================================================
"                  leader key to space bar
let g:mapleader = "\<Space>"
"let g:maplocalleader = ','
"
"let skip_defaults_vim=1       " do not load defaults if ~/.vimrc is missing
syntax enable                  " enable syntax prosessing
syntax on
"set number relativenumber     " line numbers relative
set ruler
let g:python_highlight_all = 1

" Editor- Tabs, indents ----------------------------------
" alternate save
nnoremap <C-s> :w<CR>
" alternate quit
nnoremap <C-Q> :q<CR>
" cntrl-c instead of escape modes
nnoremap <C-c> <Esc>

" Tab key & indents	--------------------------------------
set tabstop=4                  " 4 spaces per tab
set shiftwidth=4               " 1 tab= 4 spaces
set smarttab                   " set tabs for a shifttabs logic
set expandtab                  " use spaces instead of tabs
"set autoindent                 " indent when moving to the next line while writing code
"set cursorline                 " shows line under the cursor's line
set showmatch                  " shows matching part of bracket pairs (), [], {}
"set spell                      " spell chker
autocmd BufWritePre * %s/\s\+$//e " Remove trailing whitespace on save

" Search settings	------------------------------------
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set wildmode=longest,list,full  " display more completion
set incsearch	                " incremental search
set hlsearch	                " highlight search results
set nobackup
set noswapfile
" Ignore extensions for wildmenu-Tell NerdTree and Popup windows ignore these.
set wildignore+=*.a,*.o,*.so,*.pyc,.git
set wildignore+=*.jpg,*.png,*.gif,*.bmp,*.ico,*.pdf
set wildignore+=*.tmp,*.swp
let g:minimap_highlight='Visual'

" Split windows ---------------------------------------
set splitbelow
set splitright
" Removes pipes | that act as seperators on splits
set fillchars+=vert:\
"navigate windows (splits)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tabs (windows) / Buffers settings -------------------
"tab sball               " open 1 window / buffer
"set switchbuf=useopen
"nmap <F9> :bprev<CR>
"nmap <F10> :bnext<CR>
"nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

" Vim Wiki ------------------------------------------
"		for notes in markdown
let g:vimwiki_list = [{'path': '~/vimwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]

" Vim-Instant-Markdown -----------------------------
let g:instant_markdown_autostart = 0         " Turns off auto preview
let g:instant_markdown_browser = "firefox"   " Uses web browser for preview
map <Leader>md :InstantMarkdownPreview<CR>   " Previews .md file
map <Leader>ms :InstantMarkdownStop<CR>      " Kills the preview

" Open terminal inside Vim ------------------------
map <Leader>tt :vnew term://bash<CR>

" Mouse Scrolling  --------------------------------
set mouse=nicr     " scrolling
set mouse=a        " allow pasting

" for gvim widget hider ---------------------------
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Convert text to UTF-8 ---------------------------
setglobal termencoding=utf-8 fileencodings=
scriptencoding utf-8
set encoding=utf-8
autocmd BufNewFile,BufRead  *   try
autocmd BufNewFile,BufRead  *   set encoding=utf-8
autocmd BufNewFile,BufRead  *   endtry
"Going over all of this would take too much time
"This basically set everything in utf-8 in every circumtances

" Set Vim Language ---------------------------------
let $LANG='en'
"Setting env LANG var to english
set langmenu=en
"Setting menu language to en

"Sourcing evrything ("don't why but you need to do it)
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" NETRW ---------------------------------------------------
" open netrw
nnoremap <silent> <leader>f  :Vexplore<CR>.

" allow netrw to resemble nerdtree
let g:netrw_banner = 0           "disable banner
let g:netrw_liststyle = 3        "tree view
let g:netrw_browse_split = 4     "open in prior window
let g:netrw_altv = 1             "open split -right
let g:netrw_winsize = 15         "width of window
""  check |netrw-browse-maps| for more mappings
"let g:netrw_list_hide=netrw_gitignore#Hide()
":let g:netrw_list_hide.='\(^\|\s\s\)\zs\.\S\+'
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore!
"augroup END
