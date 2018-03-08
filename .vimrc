" VUNDLE CONFIG

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins start
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/youcompleteme'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rhysd/vim-clang-format'
Plugin 'raimondi/delimitmate'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-jdaddy'
Plugin 'elzr/vim-json'
Plugin 'joshdick/onedark.vim'
" Plugins end
call vundle#end()
filetype plugin indent on

" GENERAL CONFIG
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
syntax on
colorscheme onedark

" AIRLINE CONFIG
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1

" NERDTREE CONFIG
map <F7> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" TAGBAR CONFIG
nmap <F8> :TagbarToggle<CR>

" YCM CONFIG
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" CLANG FORMAT CONFIG
let g:clang_format#code_style = "chromium"
