" Berkay's NeoVim config :^)

"------------------------------------------------
" General settings
"------------------------------------------------

syntax on
filetype plugin indent on

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number relativenumber
" set timeoutlen=0 " commented out for leader key to work
set mouse=a
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set wildmenu
set termguicolors
set title
set list " added to see unused spaces with '-' symbol
set scrolloff=8
set sidescrolloff=8
set nojoinspaces

"------------------------------------------------
" Key maps
"------------------------------------------------

let mapleader = "\<space>"

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

nmap <leader>k :nohlsearch<cr>
nmap <leader>Q :bufdo bdelete<cr>

" allow gf to open non-existent files
map gf :e <cfile><cr>

" quicker switching between windows
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

" reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" open the current file in the default program
nmap <leader>x :!xdg-open %<cr><cr>

filetype plugin indent on

"------------------------------------------------
" Plugins
"------------------------------------------------

call plug#begin('~/.vim/plugged')

source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/vgo.vim
source ~/.config/nvim/plugins/signify.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/polyglot.vim

" themes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'

call plug#end()                                    
                                                   
set background=dark                                
let ayucolor="dark"
colorscheme ayu

" Airline Settings
let g:airline#extensions#tabline#enabled = 0

if executable('rg')                                
    let g:rg_derive_root = 'true'                  
endif                                              
                                                   
let g:netrw_browse_split = 0                       
                                                   
let g:ctrlp_use_caching = 0                        
let g:netrw_winsize = 25                           

" save like a human
nnoremap <C-s> :w<CR>

" move around splits
" map <leader>h :wincmd h<CR>
" map <leader>j :wincmd j<CR>
" map <leader>k :wincmd k<CR>
" map <leader>l :wincmd l<CR>

" I'm too young to die
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Github thing
nmap <leader>gs :G<CR>

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" Prettier
command Prettier :!prettier % --write

au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

" start NERDTree and put the cursor back in the other window
autocmd VimEnter * NERDTree | wincmd p

" add html syntax to dotnet razor files
autocmd BufNewFile,BufRead *.cshtml set syntax=html

" disable vim-go godef stack
let g:go_def_mapping_enabled=0

" disable NERDTree auto open when vim starts
let g:NERDTreeHijackNetrw=0

let NERDTreeShowHidden=1

