set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Use syntax highlighting
syntax enable

" Show line numbers
set number

" Always display the statusline in all windows
set laststatus=2

" Always display the tabline, even if there is only one tab
set showtabline=2
 
" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

