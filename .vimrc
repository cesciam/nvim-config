set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set splitbelow splitright " set default position
call plug#begin('~/.vim/plugged')
" Themes
Plug 'morhetz/gruvbox'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
"CR significa enter
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>


let g:kite_supported_languages = ['javascript', 'python']

autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType python let b:coc_suggest_disable = 1



if &filetype == 'javascript' || &filetype == 'python'
  inoremap <c-space> <C-x><C-u>
else
  inoremap <<silent><<expr> <c-space> coc#refres()
endif


augroup exe_code
  autocmd!
    autocmd FileType javascript nnoremap <buffer> <Leader>r
	  \ :sp<CR> :term node %<CR> :startinsert<CR>
augroup END
