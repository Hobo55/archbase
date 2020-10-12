"
"        NEOVIM init.vim
" A customized init.vim for neovim (https://neovim.io/)

"     Sourcing needed for settings/keys
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/settings/settings.vim

"======================================
"        STATUS LINE
" to see color highlighting for each colorscheme statusline source:
" :so $VIMRUNTIME/syntax/hitest.vim
"======================================

"---------------------------
" funcion to show git branch:

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
"-------------------------

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
"set statusline+=\ %{toupper(g:currentmode[mode()])}
"set statusline+=%#DiffChange#
set statusline+=%{StatuslineGit()}
set statusline+=%#Exception#
set statusline+=\ %F
set statusline+=\ %y
set statusline+=\ %m
set statusline+=%=             "RIGHT SIDE
set statusline+=%#CursorColumn#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
"set statusline+=\ %p%%
set statusline+=\ %l/%L
set statusline+=
set statusline+=\ %c
set statusline+=
set statusline+=%#Title#
set statusline+=\ (%n)

set laststatus=2            " allow statusbar in vim
set t_Co=256                " set 256 colors if terminal supports it
"set termguicolors          " enable true color in vim, if available in terminal
let g:rehash256 = 1

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
"set noshowmode

"===========================================================
"		choose colorscheme
"==========================================================
"colorscheme darcula
"colorscheme duo-mini
colorscheme gruvbox
"colorscheme khaki
"colo modest
"colorscheme odyssey
"colorscheme corvine
"colorscheme substrata
"colorscheme focus-point
"--------------------------for google, 2 lines
"set rtp+=~/.vim/colors/
"colorscheme odyssey
"--------------------------
" Cursor line   **set after colorschemes, or they get overwritten
set cursorline                          " Enable highlighting of the current line
set cursorcolumn                        " enable highlighting of current column
"highlight CursorLine cterm=bold guibg=#2b2b2b
"highlight CursorColumn cterm=bold guibg=#2b2b2b
