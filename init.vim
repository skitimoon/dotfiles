
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
set inccommand=split
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

let g:tex_flavor = 'latex'
let g:netrw_liststyle=3

nnoremap <C-e> 4<C-E>
nnoremap <C-y> 4<C-Y>
nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap x "_x
autocmd FileType help noremap <buffer> q :helpclose<cr>
autocmd FileType qf noremap <buffer> q :close<cr>
" nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
" nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nnoremap <leader>/ :nohlsearch<CR>

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>
cnoremap <C-n>  <down>
cnoremap <C-p>  <up>

call plug#begin()

Plug 'pangloss/vim-javascript' " https://github.com/pangloss/vim-javascript
Plug 'christoomey/vim-tmux-navigator' " https://github.com/christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
Plug 'ludovicchabant/vim-gutentags' " https://github.com/ludovicchabant/vim-gutentags
Plug 'majutsushi/tagbar' " https://github.com/majutsushi/tagbar
nnoremap <leader>tb :TagbarToggle<CR>
Plug 'mhinz/vim-startify' " https://github.com/mhinz/vim-startify
Plug 'Shougo/denite.nvim' " https://github.com/Shougo/denite.nvim
Plug 'Shougo/neomru.vim' " https://github.com/Shougo/neomru.vim
noremap <C-p> :Denite file_rec<cr>
noremap <leader>df :Denite file<cr>
noremap <leader>db :Denite buffer<cr>
noremap <leader>dl :Denite line<cr>
noremap <leader>dg :Denite grep<cr>
noremap <leader>dm :Denite file_mru<cr>

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ }
nnoremap <silent> <leader>K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-jedi' " https://github.com/zchee/deoplete-jedi
Plug 'SirVer/ultisnips' " https://github.com/SirVer/ultisnips
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
Plug 'honza/vim-snippets' " https://github.com/honza/vim-snippets
" Plug 'Shougo/neosnippet.vim' " https://github.com/Shougo/neosnippet.vim
" Plug 'Shougo/neosnippet-snippets' " https://github.com/Shougo/neosnippet-snippets
" Plug 'scrooloose/nerdcommenter' " https://github.com/scrooloose/nerdcommenter
" Plug 'tomtom/tcomment_vim' " https://github.com/tomtom/tcomment_vim
Plug 'tpope/vim-commentary' " https://github.com/tpope/vim-commentary
Plug 'tpope/vim-repeat' " https://github.com/tpope/vim-repeat
Plug 'machakann/vim-sandwich' " https://github.com/machakann/vim-sandwich
" Plug 'tpope/vim-surround' " https://github.com/tpope/vim-surround
Plug 'tpope/vim-unimpaired' " https://github.com/tpope/vim-unimpaired
Plug 'tpope/vim-obsession' " https://github.com/tpope/vim-obsession
Plug 'tpope/vim-fugitive' " https://github.com/tpope/vim-fugitive
" Plug 'justinmk/vim-sneak' " https://github.com/justinmk/vim-sneak
" Plug 'jiangmiao/auto-pairs' " https://github.com/jiangmiao/auto-pairs
" let g:AutoPairsFlyMode = 1
Plug 'Raimondi/delimitMate' " https://github.com/Raimondi/delimitMate
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 2
let delimitMate_jump_expansion = 1
Plug 'wellle/targets.vim' " https://github.com/wellle/targets.vim
Plug 'haya14busa/is.vim' " https://github.com/haya14busa/is.vim
Plug 'cohama/lexima.vim' " https://github.com/cohama/lexima.vim
Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline-themes' " https://github.com/vim-airline/vim-airline-themes
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
Plug 'w0rp/ale' " https://github.com/w0rp/ale
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier', 'stylelint']
\}
" Plug 'neomake/neomake' " https://github.com/neomake/neomake
" autocmd! BufWritePost * Neomake
" Plug 'bfredl/nvim-ipy' " https://github.com/bfredl/nvim-ipy
Plug 'airblade/vim-gitgutter' " https://github.com/airblade/vim-gitgutter
Plug 'lervag/vimtex' " https://github.com/lervag/vimtex
let g:vimtex_view_method='skim'
let g:vimtex_compiler_progname='nvr'
Plug 'chriskempson/base16-vim' " https://github.com/chriskempson/base16-vim
Plug 'Yggdroot/indentLine' " https://github.com/Yggdroot/indentLine
Plug 'rhysd/devdocs.vim' " https://github.com/rhysd/devdocs.vim
nnoremap <M-k> <Plug>(devdocs-under-cursor)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " https://github.com/junegunn/fzf

" Add plugins to &runtimepath
call plug#end()

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>noremap <CR> o<ESC>

runtime macros/sandwich/keymap/surround.vim
xmap is <Plug>(textobj-sandwich-query-i)
xmap as <Plug>(textobj-sandwich-query-a)
omap is <Plug>(textobj-sandwich-query-i)
omap as <Plug>(textobj-sandwich-query-a)
xmap iss <Plug>(textobj-sandwich-auto-i)
xmap ass <Plug>(textobj-sandwich-auto-a)
omap iss <Plug>(textobj-sandwich-auto-i)
omap ass <Plug>(textobj-sandwich-auto-a)
xmap im <Plug>(textobj-sandwich-literal-query-i)
xmap am <Plug>(textobj-sandwich-literal-query-a)
omap im <Plug>(textobj-sandwich-literal-query-i)
omap am <Plug>(textobj-sandwich-literal-query-a)

colorscheme base16-default-dark

