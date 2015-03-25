execute pathogen#infect()
Helptags
syntax on
filetype plugin indent on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nu

nnoremap <silent> ,t :CommandT<CR>
nnoremap <silent> ,b :CommandTMRU<CR>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

nmap <F8> :TagbarToggle<CR>

set tags=tags;/ " search for tags up heirarchy
 
colorscheme molokai

nnoremap ,, <C-w><C-w>
nnoremap ,] <C-]>
nnoremap ,[ <C-t>

set splitbelow
set splitright

" cycle through buffers
nnoremap _ :bnext<CR>
nnoremap + :bprevious<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" window
nmap <C-w><left>  :topleft  vnew<CR>
nmap <C-w><right> :botright vnew<CR>
nmap <C-w><up>    :topleft  new<CR>
nmap <C-w><down>  :botright new<CR>

" buffer
nmap <C-s><left>   :leftabove  vnew<CR>
nmap <C-s><right>  :rightbelow vnew<CR>
nmap <C-s><up>     :leftabove  new<CR>
nmap <C-s><down>   :rightbelow new<CR>

" autocmd FileType scala set tags=~/.tags

set backspace=2
let delimitMate_expand_cr = 1

"let g:JavaImpPaths = "/Users/g/projects/spark/core/src/main/java," .
"      \ "/Users/g/projects/spark/core/src/main/java,".
"      \ "/Users/g/projects/spark/core/src/main/java,".
"      \ "/Users/g/projects/spark/examples/scala-2.10/src/main/java,".
"      \ "/Users/g/projects/spark/examples/src/main/java,".
"      \ "/Users/g/projects/spark/examples/src/main/java,".
"      \ "/Users/g/projects/spark/extras/kinesis-asl/src/main/java,".
"      \ "/Users/g/projects/spark/network/common/src/main/java,".
"      \ "/Users/g/projects/spark/network/shuffle/src/main/java,".
"      \ "/Users/g/projects/spark/network/yarn/src/main/java,".
"      \ "/Users/g/projects/spark/sql/core/src/main/java"
""
"let g:JavaImpDataDir = $HOME . "/tmp/JavaImp"

nnoremap <C-i> :JI<CR>

set hlsearch
"set list listchars="tab:\uBB\uBB,trail:\u87,nbsp:~"
nnoremap  ;  :
