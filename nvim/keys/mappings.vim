" Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows (M=Alt key)
nnoremap <M-j>    :resize +2<CR>
nnoremap <M-k>    :resize -2<CR>
nnoremap <M-h>    :vertical resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>

" replace Esc key with jk or kj 
"inoremap jk <Esc>
"inoremap kj <Esc>

" Easy CAPS- place over word use control-u
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
" cycle between buffers
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save (control-s to save)
nnoremap <C-s> :w<CR>

" Alternate way to quit
"nnoremap <C-Q> :wq!<CR>
nnoremap <C-Q> :q<CR>

" Use control-c instead of escape insert mode
nnoremap <C-c> <Esc>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing - keeps lines inline w/ tab position
"vnoremap < <gv
"vnoremap > >gv

" Better window navigation
nnoremap <C-J> <C-W><C-J>   "goto window down
nnoremap <C-K> <C-W><C-K>   "            up
nnoremap <C-L> <C-W><C-L>   "            right
nnoremap <C-H> <C-W><C-H>   "            left

" change window & places in Insert mode
"nnoremap <C-h> <C-w>h   "goto window left
"nnoremap <C-j> <C-w>j   "            down
"nnoremap <C-k> <C-w>k   "            up
"nnoremap <C-l> <C-w>l                right

"nnoremap <Leader>o o<Esc>^Da
"nnoremap <Leader>O O<Esc>^Da
