""""""""""""""""""""""""""""""""""""""""""
"  VIM CONFIG   ~/vimrc
"""""""""""""""""""""""""""""""""""""""""
"
set nocompatible  " don't try to be like vi
filetype off      " force plugins load correctly when turned on below

filetype plugin on


"    General settings
"==========================================================
nnoremap <C-s> :w<CR>       " alternate save
nnoremap <C-Q> :q<CR>       " alternate quit
nnoremap <C-c> <Esc>        " cntrl-c instead of escape modes

let g:mapleader = "\<Space>"   " leader key to space bar
syntax enable                  " enable syntax prosessing
syntax on
set number		" line numbers
"set number relativenumber      " line numbers relative
"set ruler
set cmdheight=3                "command line 3 lines


"    Editor- Tabs, completion, search----------------------
set tabstop=4                  " 4 spaces per tab
set shiftwidth=4               " 1 tab= 4 spaces
set smarttab                   " set tabs for a shifttabs logic
set expandtab                  " use spaces instead of tabs
set hlsearch                   " highlight search
"set spell                      " spell chker
set path+=**                   " Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set wildmode=longest,list,full  " display more completion

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" STATUSBAR  """""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"to see color highlighting for each colorscheme statusline source:
":so $VIMRUNTIME/syntax/hitest.vim

" funcion to show git branch in vim's statusline:
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
set statusline+=\ %p%%
set statusline+=\ %l/%L
set statusline+=
set statusline+=\ %c
set statusline+=
set statusline+=%#Title#
set statusline+=\ (%n)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""\\\
"    colorscheme
set laststatus=2            " include statusbar in vim
set t_Co=256                " set 256 colors if terminal supports it
set noshowmode              " git rid of insert showing below

colorscheme substrata

" Cursor line   **set after colorschemes, or get overwritten
set cursorline		" highlight current line
"set cursorcolumn

