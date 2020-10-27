" vim-General

set nocompatible					" be iMproved, required
filetype plugin on
set backspace=indent,eol,start	    "Backspace behaviour
set ruler	
set number                         "Show line numbers
set hlsearch	             "Highlight all search results
"--------------------------------------------"
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
       \ ''   : 'V·Block ',
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

set laststatus=2			    " include statusbar in vim
colorscheme substrata
set noshowmode				" git rid of insert showing below
set cursorline
nnoremap <C-s> :w<CR>       " alternate save
nnoremap <C-Q> :q<CR>       " alternate quit
nnoremap <C-c> <Esc>        " cntrl-c instead of escape modes
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>  "navigate windows (splits)
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>