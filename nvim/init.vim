" ================================================================================
" PLUGIN CONFIGURATION
" ================================================================================
call plug#begin()

" UI Plugins
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/tagbar'
Plug 'joshdick/onedark.vim'

" Syntax & highlightning
Plug 'ntpeters/vim-better-whitespace'

" Linting & completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Text editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-jdaddy'
Plug 'preservim/nerdcommenter'

" C++
Plug 'bfrg/vim-cpp-modern'
Plug 'rhysd/vim-clang-format'

call plug#end()

" ================================================================================
" GENERAL CONFIGURATION
" ================================================================================
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

" ================================================================================
" AIRLINE CONFIGURATION
" ================================================================================
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1

" ================================================================================
" NERDTREE CONFIGURATION
" ================================================================================
map <F7> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" ================================================================================
" TAGBAR CONFIGURATION
" ================================================================================
nmap <F8> :TagbarToggle<CR>

" ================================================================================
" CLANG-FORMAT CONFIGURATION
" ================================================================================
let g:clang_format#code_style = "google"
