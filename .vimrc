execute pathogen#infect()
call pathogen#helptags()

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set number
set wrapscan
set incsearch
set hlsearch
set mouse=a

inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
nnoremap <C-H> :Php <q-args>    

let g:vdebug_options = {
\ 'server': '0.0.0.0',
\ 'watch_window_style' : 'compact'
\}

filetype plugin on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

map <silent> <C-Right> :tabn<CR>
map <silent> <C-Left> :tabp<CR>
map <silent> <C-Up> :tabnew<CR>
map <silent> <C-Down> :q<CR>
map <c-x><c-o> <c-space>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

command LB Breakpoint
