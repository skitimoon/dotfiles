
set undofile                " keep an undo file (undo changes after closing)
set relativenumber
set number
set hidden
set scrolloff=2
set sidescrolloff=7
set cursorline
set list
set termguicolors
set ignorecase
set smartcase
set background=dark
set mouse=a
" set clipboard+=unnamedplus
" set wildmode=longest:full,full

set expandtab               " Use spaces instead of tabs.
set tabstop=4               " Tab key indents by 4 spaces.
set shiftwidth=4            " >> indents by 4 spaces.
set shiftround              " >> indents to next multiple of 'shiftwidth'.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

let g:netrw_liststyle=3

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>noremap <CR> o<ESC>

nnoremap <C-e> 4<C-E>
nnoremap <C-y> 4<C-Y>
nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap x "_x
" nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
" nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nnoremap <leader>l :nohlsearch<CR>

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>
cnoremap <C-n>  <down>
cnoremap <C-p>  <up>

call plug#begin()

Plug 'christoomey/vim-tmux-navigator' "https://github.com/christoomey/vim-tmux-navigator
Plug 'mhinz/vim-startify' "https://github.com/mhinz/vim-startify
Plug 'Shougo/denite.nvim' " https://github.com/Shougo/denite.nvim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
" Plug 'scrooloose/nerdcommenter' " https://github.com/scrooloose/nerdcommenter
" Plug 'tomtom/tcomment_vim' " https://github.com/tomtom/tcomment_vim
Plug 'tpope/vim-commentary' " https://github.com/tpope/vim-commentary
Plug 'zchee/deoplete-jedi' " https://github.com/zchee/deoplete-jedi
Plug 'SirVer/ultisnips' " https://github.com/SirVer/ultisnips
Plug 'honza/vim-snippets' " https://github.com/honza/vim-snippets
" Plug 'Shougo/neosnippet.vim' " https://github.com/Shougo/neosnippet.vim
" Plug 'Shougo/neosnippet-snippets' " https://github.com/Shougo/neosnippet-snippets
Plug 'tpope/vim-repeat' " https://github.com/tpope/vim-repeat
Plug 'tpope/vim-surround' " https://github.com/tpope/vim-surround
Plug 'tpope/vim-unimpaired' " https://github.com/tpope/vim-unimpaired
Plug 'justinmk/vim-sneak' " https://github.com/justinmk/vim-sneak
Plug 'jiangmiao/auto-pairs' " https://github.com/jiangmiao/auto-pairs
" let g:AutoPairsFlyMode = 1
Plug 'wellle/targets.vim' " https://github.com/wellle/targets.vim
Plug 'haya14busa/is.vim' " https://github.com/haya14busa/is.vim
" Plug 'cohama/lexima.vim' " https://github.com/cohama/lexima.vim
Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline-themes' " https://github.com/vim-airline/vim-airline-themes
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
Plug 'w0rp/ale' " https://github.com/w0rp/ale
" Plug 'neomake/neomake' " https://github.com/neomake/neomake
" autocmd! BufWritePost * Neomake
" Plug 'bfredl/nvim-ipy' " https://github.com/bfredl/nvim-ipy
Plug 'airblade/vim-gitgutter' " https://github.com/airblade/vim-gitgutter
Plug 'lervag/vimtex' " https://github.com/lervag/vimtex
Plug 'chriskempson/base16-vim' " https://github.com/chriskempson/base16-vim
Plug 'Yggdroot/indentLine' " https://github.com/Yggdroot/indentLine
Plug 'rhysd/devdocs.vim' " https://github.com/rhysd/devdocs.vim
nnoremap <M-k> <Plug>(devdocs-under-cursor)

" Add plugins to &runtimepath
call plug#end()

colorscheme base16-default-dark

