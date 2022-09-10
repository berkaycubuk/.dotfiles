"------------------------------------------------
" Plugins
"------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
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
" source ~/.config/nvim/plugins/polyglot.vim
Plug 'sheerun/vim-polyglot'
source ~/.config/nvim/plugins/which-key.vim
source ~/.config/nvim/plugins/ncm2.vim
source ~/.config/nvim/plugins/phpactor.vim
source ~/.config/nvim/plugins/ultisnips.vim
source ~/.config/nvim/plugins/ale.vim
" source ~/.config/nvim/plugins/tree.vim " there are some issues i need to fix
" Plug 'berkaycubuk/vim-astro'

" themes
Plug 'NLKNguyen/papercolor-theme'

call plug#end()
