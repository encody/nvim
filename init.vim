" don't be compatible :)
set nocompatible



" vundle
filetype off
set rtp+=~/.config/nvim/bundle/vundle
call vundle#begin('~/.config/nvim/bundle')

" =======
" Plugins
" =======

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'marijnh/tern_for_vim'
Plugin 'bling/vim-airline'
Plugin 'othree/html5.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'

call vundle#end()

filetype on



" =============
" Plugin config
" =============

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_follow_symlinks = 1

" Syntastic n00b settings :)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" indentLine
let g:indentLine_char = '│'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'

" NERDTree
autocmd VimEnter * NERDTree
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize=34

" airline
" NeoVim doesn't currently support changing the font,
" so no patched power/airline fonts :(
let g:airline_powerline_fonts = 1



" ================
" display settings
" ================

" syntax highlighting
syntax enable
colorscheme lyla

" display whitespace
set list
set listchars=eol:¬,tab:»·,extends:>,precedes:<,trail:·

" set indentation to be four spaces
set tabstop=4 softtabstop=4 expandtab shiftwidth=4

" enable autoindent
set autoindent
filetype plugin indent on

" highlight current line
set cursorline

" don't highlight searches
set nohlsearch

" show line numbers
set number

" show relative line numbers
set relativenumber

" show absolute line numbers in insert mode
autocmd InsertEnter * set number norelativenumber
autocmd InsertLeave * set relativenumber

" enable soft word wrap
set linebreak

" only redraw when needed
set lazyredraw

" set gui font
" NeoVim doesn't currently support changing the font,
" so no patched power/airline fonts :(
set guifont=Deja\ Vu\ Sans\ Mono\ for\ Powerline



" ================
" command settings
" ================

" show autocomplete for commands
set wildmenu

" search while typing
set incsearch



" =============
" misc settings
" =============

" hide buffers
set hidden

" backup settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

