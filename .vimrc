" Initialize Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Vundle managed plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dense-analysis/ale'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/a.vim'

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

set backspace=indent,eol,start

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
"
"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2
"
"autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"
"autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4


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
set incsearch

"Ignore intermediate files for glob operations. Also used
"by the ctrlp plugin when searching for files.
set wildignore+=*.o,*.d

let g:ctrlp_custom_ignore = '\v[\/](node_modules|coverage)$'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use syntax highlighting
syntax enable

set background=dark
let g:airline_theme='solarized'
let solarized_readme=expand('.vim/bundle/vim-colors-solarized/README.mkd')
if filereadable(solarized_readme)
  colorscheme solarized
endif

" Enable spell checking in git commits
autocmd Filetype gitcommit setlocal spell
hi clear SpellBad
hi SpellBad cterm=underline


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

