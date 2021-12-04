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
set timeoutlen=0
                                                   
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
Plug 'rust-lang/rust.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'lervag/vimtex'

Plug 'amiorin/vim-project'
Plug 'StanAngeloff/php.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'stephpy/vim-php-cs-fixer'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/phpactor'
Plug 'phpactor/ncm2-phpactor'
Plug 'neomake/neomake'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'joonty/vdebug'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'

" copilot for testing
Plug 'github/copilot.vim'

" auto close
Plug 'jiangmiao/auto-pairs'

" themes
Plug 'jdsimcoe/abstract.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/sonokai'

" c# and asp.net core
Plug 'OmniSharp/omnisharp-vim'

" Themes
Plug 'tomasiser/vim-code-dark'

call plug#end()                                    
                                                   
set background=dark                                
" colorscheme sonokai
colorscheme codedark
" colorscheme ron
" let g:airline_theme='abstract'

" set background to terminal default
highlight Normal ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE  guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight airline_c ctermbg=NONE guibg=NONE
highlight airline_tab ctermbg=NONE guibg=NONE
highlight airline_tabfill ctermbg=NONE guibg=NONE

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
nnoremap <C-t> :Files<CR>

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
nnoremap <C-f> :NERDTreeFind<CR>

" Prettier
command Prettier :!prettier % --write

au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

" start NERDTree and put the cursor back in the other window
autocmd VimEnter * NERDTree | wincmd p

" add html syntax to dotnet razor files
autocmd BufNewFile,BufRead *.cshtml set syntax=html
