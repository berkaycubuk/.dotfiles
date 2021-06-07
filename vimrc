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
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" auto close
Plug 'jiangmiao/auto-pairs'

" themes
Plug 'jdsimcoe/abstract.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()                                    
                                                   
" set background=dark                                
colorscheme ron
" let g:airline_theme='abstract'

" set background to terminal default
highlight Normal ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE  guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight airline_c ctermbg=NONE guibg=NONE
" highlight airline_tabfill ctermbg=NONE guibg=NONE
                                                   
if executable('rg')                                
    let g:rg_derive_root = 'true'                  
endif                                              
                                                   
let mapleader = " "                                
let g:netrw_browse_split = 0                       
                                                   
let g:ctrlp_use_caching = 0                        
let g:netrw_winsize = 25                           
                                                   
" fzf
nnoremap <C-p> :GFiles<CR>
nnoremap <C-t> :Files<CR>

" save like a human
nnoremap <C-s> :w<CR>

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

" Prettier
command Prettier :!prettier % --write
