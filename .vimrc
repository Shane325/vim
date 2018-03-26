" Shane Barry's VIM configuration file

" pathogen.vim makes it super easy to install plugins and runtime files in
" their own private directories
" @see https://github.com/tpope/vim-pathogen
" @example: cd ~/.vim/bundle && git clone https://github.com/tpope/vim-sensible.git
execute pathogen#infect()
syntax enable 

" Set vim color scheme 
set background=dark
colorscheme solarized

" NERDTree configuration
let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1
nmap <silent> <C-n> :NERDTreeToggle<CR>

" This is extremely useful for indenation purposes
" of several filetypes used in web development
" as you can simply press gg=G for auto indentation
filetype plugin indent on

" This will show line numbers
set number

" We'll combine normal line numbers with relative
" line numbers to make it easier to move between
" multiple lines
set relativenumber

" This will enable Vim's syntax highlighting
syntax on

" This will enable Vim's spell checking feature
" for the English language (emerge -av vim-spell-en)
set spell spelllang=en

" We'll be using this option to modify files directly
" inside NERDTree inside Vim, without having to exit Vim
set modifiable

" This will highlight the current line your cursor is at
set cursorline

" This will highlight the current column your cursor is at
" and it'll make it much easier to determine your closing tags
" (along with matchtagalways) when code is properly indented
set cursorcolumn

" This will enable the usage of your mouse inside Vim in
" terminal emulators that support it (gpm)
set mouse=a

" This option speeds up macro execution in Vim
" Some users may rarely experience glitches with this option
" enabled
set lazyredraw

" This enabled 256-color support in Vim, which is needed
" by many color schemes
set t_Co=256

" This will make Vim start searching the moment you start
" typing the first letter of your search keyword
set incsearch

" This will make Vim highlight all search results that
" matched the search keyword
set hlsearch

" This will make tabs 2 spaces wide
set tabstop=2

" This is needed to tree tabs as multiple spaces
set shiftwidth=2

" This option will enable you to enter a real Tab character
" by pressing Ctrl-V<Tab>
set expandtab

" This option is for the CtrlP vim plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" This option will enable Indent Guides by default
let g:indent_guides_enable_on_vim_startup = 1

" This option will map vim jsbeautify to Ctrl+f hotkey
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Enable the matchit plugin
runtime macros/matchit.vim

" This options maps F5 key to a buffer list
nnoremap <F5> :buffers<CR>:buffer<Space>

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set split below and split right by default
set splitbelow
set splitright

" Put swp, backup and undo files in a different location than the root folder
set backupdir=~/.vimbackup//
set directory=~/.vimswap//
set undodir=~/.vimundo//

" Set encoding to utf-8
set encoding=utf8

" Set vim font to a nerd font
set guifont=DroidSansMono_Nerd_Font:h11

" Enable syntax highlighting in NerdTree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
