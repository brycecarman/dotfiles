set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jlanzarotta/bufexplorer'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Enable file-type specific formatting
filetype plugin indent on

" Allow changing buffers without first saving
set hidden

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use syntax highlighting
syntax enable

" Show line numbers
"set number

" Always display the statusline in all windows
set laststatus=2

" Always display the tabline, even if there is only one tab
set showtabline=2
 
" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

set background=dark
"let g:solarized_termcolors=256
colorscheme solarized
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

