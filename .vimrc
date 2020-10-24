""	VIMRC
"+++++++++++++++++++++++++++++++++

"	Plugins
"===========================================================
set nocompatible					" be iMproved, required

"filetype off                        " required
"PLUGINS HERE"
"filetype plugin indent on           " required
"
"  STATUS LINE CONF & COLOR SETTINGS
"======================================
" to see color highlighting for each colorscheme statusline source:
" :so $VIMRUNTIME/syntax/hitest.vim

" funcion to show git branch in vim's statusline:
"------------------------------------------------
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
"-----------------------------------------------

" function to show current mode:
let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ '' : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}

set statusline=                "LEFT SIDE
set statusline+=%#Cursor#
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=%#DiffAdd#
set statusline+=%{StatuslineGit()}
set statusline+=%#CursorColumn#
set statusline+=\ %f
set statusline+=\ %y
set statusline+=\ %m
set statusline+=%=             "RIGHT SIDE
"set statusline+=%#CursorColumn#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
"set statusline+=\ %p%%
set statusline+=\ %l/%L
set statusline+=
set statusline+=\ %c
set statusline+=
set statusline+=%#Title#
set statusline+=\ (%n)


set laststatus=2			" include statusbar in vim
set t_Co=256				" set 256 colors if terminal supports it
set termguicolors           " enable true color in vim, if available in terminal
set noshowmode				" git rid of insert showing below
let g:rehash256 = 1

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

" Open terminal inside Vim ------------------------
map <Leader>tt :vnew term://bash<CR>

" Mouse Scrolling  --------------------------------
set mouse=nicr     " scrolling
set mouse=a        " allow pasting

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
