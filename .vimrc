set background=dark encoding=utf-8 ignorecase hlsearch incsearch nocompatible
colorscheme base16-solarized
syntax on

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'itspriddle/vim-marked'
Plugin 'danielmiessler/VimBlog'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/calendar-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'davidoc/taskpaper.vim'
call vundle#end()
filetype plugin indent on

inoremap jk <ESC>
au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell    spelllang=de_de
let mapleader = ","
let g:calendar_weeknm = 3 "KW01
let g:ctrlp_cmd = 'CtrlP'
let g:vimwiki_list = [{'path': '~/vimwiki/Systembetreuer.wiki'},
		    \ {'path': '~/vimwiki/Datenschutzbeauftragter.wiki'},
		    \ {'path': '~/vimwiki/Schule.wiki'},
		    \ {'path': '~/vimwiki/Privat.wiki'},
		    \ {'path': '~/vimwiki/Computer.wiki'}]
nnoremap <leader>b :BlogSave publish
nnoremap <leader>u yypVr=
nnoremap <leader>d A<CR><CR>---<CR><CR>
nnoremap <leader>s :set spell!<enter>
nnoremap <leader>m :MarkedOpen
nnoremap <leader>c :Calendar<CR>
nnoremap <leader>u :PluginUpdate<CR>
nnoremap <leader>e :e ~/.vimrc<CR>
nnoremap <leader>t :e ~/Dropbox/Todo/todo.taskpaper<CR>