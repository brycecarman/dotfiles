set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/a.vim'

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
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Each indentation level is four spaces. Tabs are not used.
set softtabstop=4 shiftwidth=4 expandtab

" highlight trailing whitespace
autocmd FileType c,cpp,vim let w:m2=matchadd('Search', '\s\+$', -1)
" let's test it here:        

set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ignore case when searching
set ignorecase

"case-sensitive if search contains an uppercase character
set smartcase

"Highlight search things
set hlsearch

"Make search act like search in modern browsers
"set incsearch

"Ignore intermediate files for glob operations. Also used
"by the ctrlp plugin when searching for files.
set wildignore+=*.o,*.d

" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --vimgrep
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use syntax highlighting
syntax enable

" Always display the statusline in all windows
set laststatus=2

" Shows line number and column
set ruler

set background=dark
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

