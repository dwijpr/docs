set tabstop=4
set shiftwidth=4
set expandtab

set number
set relativenumber

set autoindent

let g:netrw_bufsettings = 'nu relativenumber'
let mapleader = ","
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

autocmd BufNewFile,BufRead *.md set filetype=markdown

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

let g:go_fmt_command = "goimports"
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']

set autowrite

autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage-toggle)

call plug#begin()
Plug 'fatih/vim-go'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim

set colorcolumn=80,100,120

