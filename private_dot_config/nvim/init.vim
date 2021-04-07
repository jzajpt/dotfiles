" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

" The fancy start screen for Vim.
Plug 'mhinz/vim-startify'

"  True Sublime Text style multiple selections for Vim
" Plug 'terryma/vim-multiple-cursors'

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" Ruby, Bundler, Rails & friends
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-rbenv'


" Defaults everyone can agree on
Plug 'tpope/vim-sensible'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'

" Helpers for UNIX
Plug 'tpope/vim-eunuch'

" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

" HTML5 omnicomplete and syntax
Plug 'othree/html5.vim'

Plug 'airblade/vim-gitgutter'

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Show a diff using Vim its sign column.
Plug 'mhinz/vim-signify'
set updatetime=100

" Find And Replace Vim plugin
Plug 'brooth/far.vim'

" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" HTML from CSS
" Plug 'mattn/emmet-vim'

" Adds file type icons to Vim plugins
Plug 'ryanoasis/vim-devicons'

" asynchronously displaying the colours in the file
" Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }


" Color schemes
Plug 'rakr/vim-one'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'mhinz/vim-janah'
Plug 'patstockwell/vim-monokai-tasty'

" Initialize plugin system
call plug#end()

" Remove trailing whitespace before saving and keep cursor in place
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

set nocompatible

nnoremap <C-P> :Files<CR>

set background=dark
colorscheme one

let g:one_allow_italics=1
let g:lightline = { 'colorscheme': 'one' }

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif

set number
set autowrite
set confirm

set mouse=a
set textwidth=80

set clipboard+=unnamedplus

" Always show the signcolumn, otherwise it would shift the text each tima
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Endwise
" disable mapping to not break coc.nvim (I don't even use them anyways)
let g:endwise_no_mappings = 1

source $HOME/.config/nvim/plug-config/coc.vim

" FZF
let g:fzf_buffers_jump = 1

