" Pathogen
" call pathogen#infect()


" Automatic reload of .vimrc
autocmd! bufwritepost .vimrc source %


" Mouse and backspace
set mouse=a	" OSX -> ALT + click
set bs=2 " Normal backspace


" Indentation
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab


" Window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" make y behave like other capitals
map Y y$


" Easy redo
nnoremap U <c-r>


" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv


" put useful info in status bar
" set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]


" Colors
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget https://raw.githubusercontent.com/chriskempson/base16-vim/master/colors/base16-default.vim
set t_Co=256
set background=dark
" colorscheme base16-default
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
"" colorscheme wombat256mod

" set up some custom colors
" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
" highlight LineNr       ctermbg=236 ctermfg=240
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermfg=240 ctermbg=12
highlight StatusLine   ctermbg=240 ctermfg=12
" highlight IncSearch    ctermbg=3   ctermfg=1
" highlight Search       ctermbg=1   ctermfg=3
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=3   ctermfg=1
" highlight SpellBad     ctermbg=0   ctermfg=1

" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" Enable syntax highlighting
" reload to apply changes
filetype off
filetype plugin indent on
syntax on


" Showing line numbers and length
set number
set tw=79
set nowrap
set fo-=t
" set colorcolumn=80
highlight ColorColumn ctermbg=233
highlight LineNr ctermbg=233


" Line splitting
vmap Q gp
nmap Q gqap


" Undo history
set history=700
set undolevels=700


" Case insensitive search
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable swp files
set nobackup
set nowritebackup
set noswapfile


" asdf
set nocompatible                  " don't need to be compatible with old vim
set showmatch                     " show bracket matches
"set cursorline                    " highlight current line
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
"set vb                            " enable visual bell (disable audio bell)
"set ruler                         " show row and column in footer
set scrolloff=4                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set list listchars=tab:»·,trail:· " show extra space characters
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full


" set leader key to comma
let mapleader = ","

