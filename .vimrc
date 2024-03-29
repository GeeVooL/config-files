" VUNDLE CONFIG

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins start
Plugin 'VundleVim/Vundle.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'
Plugin 'valloric/youcompleteme'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rhysd/vim-clang-format'
Plugin 'raimondi/delimitmate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-jdaddy'
Plugin 'elzr/vim-json'
Plugin 'kelan/gyp.vim'
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
set hlsearch
set tw=80
set fo-=l

syntax on
colorscheme onedark
let g:indentLine_color_term = 236

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
let g:ycm_autoclose_preview_window_after_insertion = 1

" CLANG FORMAT CONFIG
let g:clang_format#code_style = "chromium"
