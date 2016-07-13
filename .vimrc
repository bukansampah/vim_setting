set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'tpope/vim-sensible'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'slim-template/vim-slim'
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'vimwiki/vimwiki'
Bundle 'vim-scripts/DrawIt'
Bundle 'tpope/vim-markdown'
Bundle 'craigemery/vim-autotag'
call vundle#end()            " required



filetype plugin indent on 


let mapleader=","
map <Leader>n :NERDTree<CR>

let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set laststatus=2

"color jellybeans
colorscheme ir_black

set cursorline
set expandtab
set modelines=0
set shiftwidth=4
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=4
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set autoindent
set fo+=2n
"set tw=120
set foldmethod=indent
set foldlevel=20
set lazyredraw

set ts=4 et
filetype indent on
syntax on

set tags=tags;/

"let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.mkd','path': '~/vimwiki/personal/', 'path_html': '~/public_html/vimwiki/personal/'},
            \ {'path': '~/vimwiki/northstar/', 'path_html': '~/public_html/vimwiki/northstar/'}]

let g:vimwiki_list = [{'path': '~/vimwiki/personal/', 'path_html': '~/public_html/vimwiki/personal/'},
            \ {'path': '~/vimwiki/northstar/', 'path_html': '~/public_html/vimwiki/northstar/'}]


"let g:vimwiki_list = [{"path": ‘your_wiki_place”, "path_html": ‘wiki_html_location’, "syntax": 'markdown', "ext": '.mkd', "css_file": ‘location of designated css’, "custom_wiki2html": ‘link to the custom converter, i.e. misaka_md2html.py', "auto_export": 1}]

map <Leader>html :VimwikiAll2HTML<CR>
map <Leader>di <Plug>DrawItStart
map <Leader>ds <Plug>DrawItStop
"misc
"to enable mouse 
"set mouse=a
"to disable mouse
"set mouse=""

"Delete buffer without losing the split window
nnoremap <silent> <leader>q :lclose<bar>b#<bar>bd #<CR>


au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
