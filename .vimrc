"add all vim options here
set nocompatible
set encoding=utf-8
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set nu

"set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

"initialize plugin installation
call vundle#begin()

"set Vundle to manage itself
Plugin 'gmarik/Vundle.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'

"end plugin initialization
call vundle#end()

filetype on
syntax enable
colorscheme zenburn

"plugin options
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_go_checkers=['golint', 'govet', 'errcheck']
let g:syntastic_mode_map={ 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_fields=1
let g:go_highlight_types=1
let g:go_highlight_operators=1
let g:go_highlight_build_constraints=1
let g:go_list_type="quickfix"
