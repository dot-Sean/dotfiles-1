execute pathogen#infect()
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
