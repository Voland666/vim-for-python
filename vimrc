call pathogen#infect()
call pathogen#helptags()
filetype off

syntax on
filetype on
filetype plugin indent on

set nocompatible
set backspace=indent,eol,start
set colorcolumn=80
set autoindent
set expandtab
set smarttab
set foldcolumn=4
set foldmethod=indent
set foldlevel=99
set smartindent
set ruler
set number
set fillchars=stl:\ ,stlnc:\ ,vert:┃
set laststatus=2
map <F3> :q<CR>
map <leader>g :GundoToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>
set tildeop "~"
set completeopt=menuone,longest,preview

let g:pyflakes_use_quickfix=1
let g:pep8_map='<leader>8'
let g:SuperTabDefaultCompletionType="context"
let loaded_minibufexplorer = 0
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

function! SetPythonFile()
set omnifunc=pythoncomplete#Complete
set tabstop=8 textwidth=79 shiftwidth=4 softtabstop=4
set expandtab autoindent number
endfunction

function! SetHTMLFile()
set omnifunc=htmlcomplete#CompleteTags
set tabstop=4 textwidth=255 shiftwidth=2 softtabstop=2
set number expandtab autoindent
endfunction

function! SetCSSFile()
set omnifunc=csscomplete#CompleteCSS
set tabstop=4 textwidth=255 shiftwidth=2 softtabstop=2
set number expandtab autoindent
endfunction

function! SetJavascriptFile()
set omnifunc=javascriptcomplete#CompleteJS
set tabstop=4 textwidth=255 shiftwidth=2 softtabstop=2
set number expandtab autoindent
endfunction

function! SetRubyFile()
set tabstop=2 textwidth=255 shiftwidth=2 softtabstop=2
set number expandtab autoindent
endfunction

autocmd FileType python call SetPythonFile()
autocmd FileType javascript call SetJavascriptFile()
autocmd FileType html call SetHTMLFile()
autocmd FileType css call SetCSSFile()
autocmd FileType ruby call SetRubyFile()

py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
"colorscheme fu
colorscheme voland
