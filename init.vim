set undofile                " keep an undo file (undo changes after closing)
set relativenumber
set number
set hidden
set scrolloff=2
set sidescrolloff=7
set cursorline
set cursorcolumn
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
nnoremap <Space> <Nop>
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"
nnoremap \ <Space>

nnoremap <C-e> 4<C-E>
nnoremap <C-y> 4<C-Y>
nnoremap Y y$
nnoremap j gj
nnoremap k gk
" nnoremap x "_x
autocmd FileType help noremap <buffer> q :helpclose<cr>
autocmd FileType qf,diff noremap <buffer> q :close<cr>
" nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
" nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nnoremap <leader>/ :nohlsearch<CR>
nnoremap g= mmgg=G`m

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>
cnoremap <C-n> <down>
cnoremap <C-p> <up>

call plug#begin()

" Plug 'google/vim-searchindex' " https://github.com/google/vim-searchindex
Plug 'haya14busa/vim-asterisk' " https://github.com/haya14busa/vim-asterisk
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

" Plug 'LucHermitte/lh-vim-lib'
" Plug 'LucHermitte/lh-brackets' " https://github.com/LucHermitte/lh-brackets
" imap <C-J> <Plug>MarkersJumpF
" imap <C-K> <Plug>MarkersJumpB
Plug 'osyo-manga/vim-anzu' " https://github.com/osyo-manga/vim-anzu
Plug 'pangloss/vim-javascript' " https://github.com/pangloss/vim-javascript
Plug 'christoomey/vim-tmux-navigator' " https://github.com/christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
Plug 'ludovicchabant/vim-gutentags' " https://github.com/ludovicchabant/vim-gutentags
Plug 'majutsushi/tagbar' " https://github.com/majutsushi/tagbar
nnoremap <leader>tb :TagbarToggle<CR>
Plug 'mhinz/vim-startify' " https://github.com/mhinz/vim-startify
Plug 'Shougo/denite.nvim' " https://github.com/Shougo/denite.nvim
Plug 'Shougo/neomru.vim' " https://github.com/Shougo/neomru.vim
nnoremap <C-p> :Denite file_rec<cr>
nnoremap <leader>df :Denite file<cr>
nnoremap <leader>db :Denite buffer<cr>
nnoremap <leader>dl :Denite line<cr>
nnoremap <leader>dg :Denite grep<cr>
nnoremap <leader>dm :Denite file_mru<cr>

Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }
set formatexpr=LanguageClient#textDocument_rangeFormatting_sync()
let g:LanguageClient_serverCommands = {
            \ 'python': ['pyls'],
            \ 'javascript': ['javascript-typescript-stdio'],
            \ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> <leader>K :call LanguageClient_textDocument_hover()<CR>
nnoremap <leader>gd gd
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
Plug 'tmux-plugins/vim-tmux-focus-events' " https://github.com/tmux-plugins/vim-tmux-focus-events
Plug 'davidhalter/jedi-vim' " https://github.com/davidhalter/jedi-vim
let g:jedi#completions_enabled = 0
let g:jedi#goto_command = 'gd'
let g:jedi#use_splits_not_buffers = 'right'
Plug 'zchee/deoplete-jedi' " https://github.com/zchee/deoplete-jedi
Plug 'SirVer/ultisnips' " https://github.com/SirVer/ultisnips
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
Plug 'honza/vim-snippets' " https://github.com/honza/vim-snippets
" Plug 'Shougo/neosnippet.vim' " https://github.com/Shougo/neosnippet.vim
" Plug 'Shougo/neosnippet-snippets' " https://github.com/Shougo/neosnippet-snippets
" Plug 'scrooloose/nerdcommenter' " https://github.com/scrooloose/nerdcommenter
Plug 'skywind3000/asyncrun.vim' " https://github.com/skywind3000/asyncrun.vim
let g:asyncrun_open = 12
autocmd FileType python nnoremap <F7> :w<cr>:AsyncRun -raw python %<cr>
" Plug 'tomtom/tcomment_vim' " https://github.com/tomtom/tcomment_vim
Plug 'tpope/vim-commentary' " https://github.com/tpope/vim-commentary
Plug 'tpope/vim-repeat' " https://github.com/tpope/vim-repeat
" Plug 'tpope/vim-surround' " https://github.com/tpope/vim-surround
Plug 'tpope/vim-unimpaired' " https://github.com/tpope/vim-unimpaired
Plug 'tpope/vim-obsession' " https://github.com/tpope/vim-obsession
Plug 'tpope/vim-fugitive' " https://github.com/tpope/vim-fugitive
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gl :Glog<cr>
" Plug 'justinmk/vim-sneak' " https://github.com/justinmk/vim-sneak
" Plug 'jiangmiao/auto-pairs' " https://github.com/jiangmiao/auto-pairs
" let g:AutoPairsFlyMode = 1
Plug 'Raimondi/delimitMate' " https://github.com/Raimondi/delimitMate
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 2
let delimitMate_jump_expansion = 1
let delimitMate_balance_matchpairs = 1
autocmd FileType tex let b:delimitMate_quotes = "\" ' ` $"
Plug 'wellle/targets.vim' " https://github.com/wellle/targets.vim
let g:targets_argOpening = '[({[]'
let g:targets_argClosing = '[]})]'
Plug 'machakann/vim-sandwich' " https://github.com/machakann/vim-sandwich
Plug 'haya14busa/is.vim' " https://github.com/haya14busa/is.vim
" Plug 'cohama/lexima.vim' " https://github.com/cohama/lexima.vim
Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline-themes' " https://github.com/vim-airline/vim-airline-themes
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline#extensions#ale#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
Plug 'w0rp/ale' " https://github.com/w0rp/ale
let g:ale_echo_msg_format = '[%linter%] %code: %%s [%severity%]'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
            \   'javascript': ['prettier'],
            \   'css': ['prettier', 'stylelint'],
            \   'python': ['yapf']
            \}
nnoremap <leader>af :ALEFirst<CR>
" Plug 'neomake/neomake' " https://github.com/neomake/neomake
" autocmd! BufWritePost * Neomake
" Plug 'bfredl/nvim-ipy' " https://github.com/bfredl/nvim-ipy
Plug 'airblade/vim-gitgutter' " https://github.com/airblade/vim-gitgutter
Plug 'lervag/vimtex' " https://github.com/lervag/vimtex
let g:vimtex_view_method='skim'
let g:vimtex_compiler_progname='nvr'
let g:vimtex_fold_enabled=1
Plug 'chriskempson/base16-vim' " https://github.com/chriskempson/base16-vim
Plug 'nathanaelkane/vim-indent-guides' " https://github.com/nathanaelkane/vim-indent-guides
Plug 'Yggdroot/indentLine' " https://github.com/Yggdroot/indentLine
autocmd FileType tex let g:indentLine_enabled=0
" Plug 'rhysd/devdocs.vim' " https://github.com/rhysd/devdocs.vim
" nnoremap <leader>dd <Plug>(devdocs-under-cursor)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " https://github.com/junegunn/fzf

" Add plugins to &runtimepath
call plug#end()

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>noremap <CR> o<ESC>

runtime macros/sandwich/keymap/surround.vim
" xmap is <Plug>(textobj-sandwich-query-i)
" xmap as <Plug>(textobj-sandwich-query-a)
" omap is <Plug>(textobj-sandwich-query-i)
" omap as <Plug>(textobj-sandwich-query-a)
xmap is <Plug>(textobj-sandwich-auto-i)
xmap as <Plug>(textobj-sandwich-auto-a)
omap is <Plug>(textobj-sandwich-auto-i)
omap as <Plug>(textobj-sandwich-auto-a)
xmap im <Plug>(textobj-sandwich-literal-query-i)
xmap am <Plug>(textobj-sandwich-literal-query-a)
omap im <Plug>(textobj-sandwich-literal-query-i)
omap am <Plug>(textobj-sandwich-literal-query-a)
" add spaces inside braket
let g:sandwich#recipes += [
            \   {'buns': ['{ ', ' }'], 'nesting': 1, 'match_syntax': 1, 'kind': ['add', 'replace'], 'action': ['add'], 'input': ['{']},
            \   {'buns': ['[ ', ' ]'], 'nesting': 1, 'match_syntax': 1, 'kind': ['add', 'replace'], 'action': ['add'], 'input': ['[']},
            \   {'buns': ['( ', ' )'], 'nesting': 1, 'match_syntax': 1, 'kind': ['add', 'replace'], 'action': ['add'], 'input': ['(']},
            \   {'buns': ['{\s*', '\s*}'],   'nesting': 1, 'regex': 1, 'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'], 'action': ['delete'], 'input': ['{']},
            \   {'buns': ['\[\s*', '\s*\]'], 'nesting': 1, 'regex': 1, 'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'], 'action': ['delete'], 'input': ['[']},
            \   {'buns': ['(\s*', '\s*)'],   'nesting': 1, 'regex': 1, 'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'], 'action': ['delete'], 'input': ['(']},
            \ ]

colorscheme base16-dracula

