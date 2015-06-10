set background=dark encoding=utf-8 ignorecase hlsearch incsearch nocompatible cursorline laststatus=2 noshowmode number textwidth=79 so=999
syntax on
let base16colorspace=256
colorscheme base16-solarized

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'itspriddle/vim-marked'
Plugin 'danielmiessler/VimBlog'
Plugin 'mattn/calendar-vim'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'lervag/vim-latex'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on

set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
let g:airline_powerline_fonts = 1

let g:bufferline_echo = 0
let g:bufferline_modified = '*'
let g:bufferline_show_bufnr = 0

let g:latex_viewer = 'open -ga /Applications/Preview.app'

inoremap jk <ESC>
au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter	*.tex	setlocal spell	spelllang=de_de
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V
let g:calendar_weeknm = 3 "KW01
nnoremap <leader>p :BlogSave publish
nnoremap <leader>b :BlogSwitch<CR>
nnoremap <leader>d A<CR><CR>---<CR><CR>
nnoremap <leader>s :set spell!<enter>
nnoremap <leader>m :MarkedOpen<CR>
nnoremap <leader>c :Calendar<CR>
nnoremap <leader>u :PluginUpdate<CR>
nnoremap <leader>r ggVGg?g?
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>
nnoremap <leader>x :bd<CR>
nnoremap <leader>e :e ~/.vimrc<CR>
nnoremap <leader>y "=strftime("%d.%m.%Y")<CR>P
