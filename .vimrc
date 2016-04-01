set nocompatible

"Bundles setup
if filereadable(expand("~/.vimbundles"))
        source ~/.vimbundles
endif

"General
filetype plugin indent on	"Automatically detect file types
set mouse=a			"Automatically enable mouse usage
set mousehide			"Hide the mouse cursor while typing
set encoding=utf-8              "Encoding
set fileencoding=utf-8
set fileencodings=utf-8
scriptencoding utf-8
set viewoptions=folds,options,cursor,unix,slash
set virtualedit=all
set spell			"Spell checking on
set clipboard=unnamed,unnamedplus
set hidden			"Allow buffer switching without saving
set backspace=indent,eol,start
function! ResCur()		"Restore cursor to file position in previous editing session
	if line("'\"") <= line("$")
		normal! g`"
		return 1
	endif
endfunction
augroup resCur
	autocmd!
	autocmd BufWinEnter * call ResCur()
augroup END
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set foldenable  "enable folding
set foldmethod=syntax   
set foldlevelstart=10
set foldnestmax=10
set foldlevel=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set fileformats=unix,dos,mac
set wildmenu            " visual autocomplete for command menu
set shell=/bin/sh 

"Vim UI
syntax enable			"Syntax highlighting
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
color solarized
highlight clear SignColumn 
highlight clear LineNr
set t_Co=256
set ruler			"Show the ruler
set showcmd 			"Show partial command in status line
set tabpagemax=100		"Show only 20 tabs
set showmode			"Display current line
set cursorline			"Highline current line
set laststatus=2
set relativenumber

"Plugin Settings

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = ""
let g:syntastic_warning_symbol = ""
let g:syntastic_enable_highlighting = 1
let g:syntastic_html_tidy_exec = 'tidy5'

"Nerdtree settings
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeMouseMode=2
let g:NERDTreeShowHidden=1			       
let g:NERDTreeKeepTreeInNewTab=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }  

"Airline settings
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#ctrlp#color_template = 'insert'
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#wordcount#enabled = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

"webdevicon settings
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_ctrlp = 1

"Neocomplcache setting
let g:acp_enableAtStartup = 1
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_force_overwrite_completefunc = 1

if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif

let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'


"Ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 20
let g:ctrlp_user_command = 'find %s -type f'  
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"Ultisnips settings
let g:UltiSnipsUsePythonVersion = 2

"gitgutter settings
let g:gitgutter_realtime = 1
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''

"color code settings
let g:color_coded_enabled = 0

"bufferline settings
let g:bufferline_echo = 1
let g:bufferline_modified = '[+]'
let g:bufferline_show_bufnr = 1
let g:bufferline_solo_highlight = 0

"colorizer settings
let g:colorizer_auto_color = 1
let g:colorizer_syntax = 1
let g:colorizer_hex_pattern = ['#', '\%(\x\{3}\|\x\{6}\)', '']
let g:colorizer_auto_filetype='css,html'

"C/C++ settings
autocmd FileType c,cpp,cc set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30

"omni completion enable
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
if has("autocmd") && exists("+omnifunc")
        autocmd Filetype *
                        \ if &omnifunc == "" |
                        \   setlocal omnifunc=syntaxcomplete#Complete |
                        \ endif
endif
