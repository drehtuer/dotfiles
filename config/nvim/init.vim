call plug#begin('~/.local/share/nvim/plugged')
"Plug 'arakashic/chromatica.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'aklt/plantuml-syntax'
Plug 'blueyed/vim-diminactive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'elzr/vim-json'
Plug 'fenetikm/falcon'
Plug 'iamcco/git-p.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'iamcco/sran.nvim', {'do': { -> sran#util#install() }}
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pechorin/any-jump.vim'
Plug 'preservim/nerdcommenter'
Plug 'roxma/nvim-yarp'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tyru/open-browser.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-syntastic/syntastic'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'weynhamz/vim-plugin-minibufexpl'
Plug 'yggdroot/indentline'
call plug#end()

autocmd FocusGained,BufEnter  * checktime

filetype plugin indent on
highlight ExtraWhitespace ctermbg=lightgrey guibg=lightgrey
syntax on
colorscheme falcon

set noautochdir
set nobackup
set nolist
set noswapfile
set nowritebackup
set nrformats-=octal
set number
set relativenumber
set ruler
set scrolloff=1
set shell=bash
set shiftwidth=2
set shortmess+=c
set showcmd
set showfulltag
set showmatch
set showmode
set sidescrolloff=5
set smartcase
set smartindent
set smarttab
set spelllang=en_us
set switchbuf=useopen,usetab
set syntax=on
set tabstop=2
set termguicolors
set textwidth=80
set title
set wrap
set wrapmargin=0
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set completeopt=noinsert,menuone,noselect
set conceallevel=0
set confirm
set expandtab
set fileformat=unix
set foldenable
set foldmethod=manual
set formatoptions=tcro
set history=10000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set linebreak
set more
set mouse=a
set mousemodel=popup_setpos

let g:falcon_airline=1
let g:airline_theme='falcon'
let g:falcon_background=0
let g:falcon_inactive=1

let g:vim_json_syntax_conceal=0

let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrow=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_c_checkers=[]
let g:syntastic_cpp_checkers=[]

let g:chromatica#libclang_path='/usr/lib/x86_64-linux-gnu/libclang-10.so.1'
let g:chromatica#enable_at_startup=1

let g:DoxygenToolkit_commentType = "C++"

"inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

"let g:indentLine_setConceal=0
let g:indentLine_fileTypeExclude = [
  \ 'json',
  \ 'md',
  \ ]

let g:table_mode_corner='|'

let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0
let g:mkdp_refresh_slow = 0
let g:mkdp_browser = 'firefox'

set secure
set noexrc
