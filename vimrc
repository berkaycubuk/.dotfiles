syntax on                                          
                                                   
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
set timeoutlen=50
set shell=fish
                                                   
call plug#begin('~/.vim/plugged')                  
                                                   
Plug 'AndrewRadev/splitjoin.vim'
Plug 'leafgarland/typescript-vim'                  
Plug 'neoclide/coc.nvim', {'branch': 'release'}    
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                            
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'townk/vim-autoclose'
Plug 'jdsimcoe/abstract.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()                                    
                                                   
set background=dark                                
colorscheme gruvbox
" let g:airline_theme='gruvbox'
" colorscheme abstract
" let g:airline_theme='abstract'
                                                   
if executable('rg')                                
    let g:rg_derive_root = 'true'                  
endif                                              
                                                   
let mapleader = " "                                
let g:netrw_browse_split = 2                       
                                                   
let g:ctrlp_use_caching = 0                        
let g:netrw_winsize = 25                           
                                                   
nnoremap <C-p> :GFiles<CR>
nnoremap <C-t> :Files<CR>
nnoremap <C-s> :w<CR>
nnoremap <Leader>pt :NERDTreeToggle<Enter>
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nmap <leader>gs :G<CR>
