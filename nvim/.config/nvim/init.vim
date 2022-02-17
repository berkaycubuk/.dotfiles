syntax on                                          
filetype plugin indent on
                                                   
set noerrorbells                                   
set tabstop=4 softtabstop=4                        
set shiftwidth=4                                   
set expandtab                                      
set smartindent                                    
set nu                                             
set nowrap                                         
set smartcase                                      
set noswapfile                                     
set nobackup                                       
set undodir=~/.vim/undodir                         
set undofile                                       
set incsearch                                      
set number relativenumber                          
set timeoutlen=0
set mouse=a
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set wildmenu

filetype plugin indent on
                                                   
call plug#begin('~/.vim/plugged')                  
                                                   
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " glorious go plugin
Plug 'preservim/nerdtree' " you now what is it
Plug 'mhinz/vim-signify' " show diffs inside the file

" themes
Plug 'morhetz/gruvbox'

call plug#end()                                    
                                                   
set background=light                                
colorscheme gruvbox

" Airline Settings
let g:airline#extensions#tabline#enabled = 0

if executable('rg')                                
    let g:rg_derive_root = 'true'                  
endif                                              
                                                   
let mapleader = " "                                
let g:netrw_browse_split = 0                       
                                                   
let g:ctrlp_use_caching = 0                        
let g:netrw_winsize = 25                           

" save like a human
nnoremap <C-s> :w<CR>
                                                   
" fzf
nnoremap <C-p> :GFiles<CR>
nnoremap <C-f> :Files<CR>

" move around splits
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

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

