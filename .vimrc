set nocompatible

"Bundles setup
if filereadable(expand("~/.vimbundles"))
        source ~/.vimbundles
endif

"General
filetype plugin indent on	"Automatically detect file types
syntax enable			"Syntax highlighting
set mouse=a			"Automatically enable mouse usage
set mousehide			"Hide the mouse cursor while typing
scriptencoding utf-8
set viewoptions=folds,options,cursor,unix,slash
set virtualedit=all
set spell			"Spell checking on
set clipboard=unnamed,unnamedplus
set hidden			"Allow buffer switching without saving
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

"Vim UI
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
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

"Nerdtree settings
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1			       
let NERDTreeKeepTreeInNewTab=1

"Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#ctrlp#color_template = 'insert'

"webdevicon settings
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

"tmuxline settings
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = 'full'

"Neocomplcache setting
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_force_overwrite_completefunc = 1

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif

let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'


"Ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
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
