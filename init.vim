call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'brooth/far.vim'

"Colorschemes
Plug 'doums/darcula'

"Languages
Plug 'vim-ruby/vim-ruby'
Plug 'udalov/kotlin-vim'
Plug 'pangloss/vim-javascript'
Plug 'ekalinin/Dockerfile.vim'
Plug 'leafgarland/typescript-vim'
Plug 'rust-lang/rust.vim'

"Dev
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

"Colorschmes
colorscheme darcula

" Airline config
let g:airline_powerline_fonts = 1

set number
syntax on
filetype plugin indent on
filetype on
filetype indent on

set sts=2

" walks 1 tab per time
set ts=1
set sw=2

" converts tab to space
set expandtab

set clipboard+=unnamedplus

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show only the filename in tab
let g:airline#extensions#tabline#fnamemod = ':t'

"use Q to quit
nnoremap Q :q<return>

" shortcut to remove highlight
nnoremap <esc><esc> :noh<return>

" shortcut to previous buffer (Alt+left)
:nmap <silent> <A-Left> :bp<CR>

" shortcut to next buffer (Alt+right)
:nmap <silent> <A-Right> :bn<CR>

"Kill (and closes) current buffer
:nnoremap D :bd<return>

" Alt+Shift+Left move to left window
:nnoremap <A-S-Left> <C-w><Left>

" Alt+Shift+Right move to right window
:nnoremap <A-S-Right> <C-w><Right>

" jump to a buffer where it is (in another window, another tab) instead of replacing the current buffer
set switchbuf=useopen,usetab

" NERDTree config
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowLineNumbers = 0
let g:NERDTreeShowHidden = 1
map <F10> :NERDTreeToggle<CR>
" No need to quit NERDTree to quit from vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Crop
let g:move_key_modifier = 'C'

" config format invisible chars
:set listchars=eol:¬,tab:¶¶,trail:␣,extends:>,precedes:<,space:␣

" toggle show invisible chars
nnoremap <F5> :set list! <return>

" reformat code indentation
:nnoremap <F6> gg=G

" Highlight all search results
set hlsearch
" Do case insensitive search
set ignorecase
" Show incremental search results as you type
set incsearch

" move lines up/down
nnoremap <C-Up> :m-2<return>
nnoremap <C-Down> :m+<return>

" move between words
nnoremap <C-Left> b
nnoremap <C-Right> w

" save current file
nnoremap <C-s> :w<return>

" select all lines
nnoremap <C-A> ggVG

" scroll documentation in coc autocomplete
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
nmap <silent>rn <Plug>(coc-rename)
" navigate in the definitions in coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Use 'F' to request input in Far search
nnoremap <expr> F ":F " . input("Search for: ") . " **/*.*\<return>"

"CtrlP results window size
:let g:ctrlp_match_window = 'min:4,max:100' 

"CtrlP shortcuts
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
