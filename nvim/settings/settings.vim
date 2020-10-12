" set leader key
let g:mapleader = "\<Space>"

" GENERAL ---------------------------------
"set autochdir                           " Your working directory will always be the same as your working directory
"set background=dark                     " tell vim what the background color looks like
"set colorcolumn=80                      " column marker 3
set cmdheight=2                         " more space for messages
"set encoding=utf-8                      " The encoding displayed
"set fileencoding=utf-8                  " The encoding written to file
"set formatoptions-=cro                  " Stop newline continution of comments
set hidden                              " Required to keep multiple buffers open
set nobackup                            " backups del after file saved
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
"set nowritebackup                       " This is recommended by coc
"set number                              " Line numbers
"set number relativenumber               "  "  relative
"set ruler                              " Show the cursor position all the time
"set timeoutlen=500                      " By default timeoutlen is 1000 ms
set updatetime=300                      " Faster completion
syntax enable                           "enables syntax highlighting
"syntax on


" MOUSE\ Scrolling -------------------------
set mouse=nicr                          " scrolling
set mouse=a                             " allow cursor movement, pasting
set clipboard=unnamedplus              "copy/paste between vim and others"
"let g:python_highlight_all = 1

" Editor- Tabs, indents --------------------
set autoindent                          " Good auto indent
set expandtab                           " Converts tabs to spaces
set fillchars+=vert:\     " Removes pipes | that act as seperators on splits
set iskeyword+=-                      	" treat dash separated words as a word text object"
set nowrap                              " no line wrapping
set pumheight=10                        " makes popup menu smaller
set shiftwidth=4                        " 1 tab == 4 spaces
set showmatch                           " shows matching part of bracket pairs
"set showtabline=2                       " Always show tabs
set smartindent                         " Makes indenting smart
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set splitbelow                          " open split below current window
set splitright                          "        to right of window
"set spell                               " spell chker
set tabstop=2                           " 2 spcs/tab
autocmd BufWritePre * %s/\s\+$//e       " Remove trailing whitespace on save

" Search settings ---------------------------
set incsearch                           " incremental search
set hlsearch                            " highlight search results
set path+=**                            " Searches current directory recursively.
set wildmode=longest,list,full          " completion
"set wildmenu                           " Display all matches when tab complete.

" for VimWiki -------------------------------
let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'syntax': 'markdown', 'ext': '.md'}]

" Vim-Instant-Markdown ----------------------
filetype plugin on
let g:instant_markdown_autostart  = 0        " Turns off auto preview
let g:instant_markdown_browser = "firefox"   " Uses browser for preview
map <Leader>md :InstantMarkdownPreview<CR>   " Previews .md file
map <Leader>ms :InstantMarkdownStop<CR>      " Kills the preview
set conceallevel=0                           " So that I can see `` in markdown files

"au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm
                                         " alternatively you can run :source $MYVIMRC

" You can't stop me- save as sudo if you forget to use before opening file
cmap w!! w !sudo tee %
