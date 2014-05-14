set nocompatible              " be iMproved
filetype off                  " required!
set rtp+=~/.vim/Bundle/vundle/
call vundle#rc()
""vundle
Bundle 'gmarik/vundle'
"ui related
Bundle 'tomasr/molokai'
Bundle 'junegunn/goyo.vim'
" Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'tpope/vim-surround'
Bundle 'bling/vim-airline'
Bundle 'edkolev/tmuxline.vim'
"language support
Bundle 'jcfaria/vim-r-plugin'
" Bundle 'JuliaLang/julia-vim'
" Bundle 'davidhalter/jedi-vim'
" Bundle 'gerw/vim-latex-suite'
" Bundle 'jcf/vim-latex'
Bundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
" Bundle 'latex-box-team/latex-box'
" Bundle "derekwyatt/vim-scala"

"window managment
Bundle 'ervandew/screen'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'ervandew/supertab'
" move around
Bundle 'lokaltog/vim-easymotion'
" ide stuff
Bundle 'kien/ctrlp.vim'
Bundle 'jazzcore/ctrlp-cmatcher'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
" Bundle 'tpope/vim-commentary'
"" ORG MODE
" Bundle 'jceb/vim-orgmode'
" Bundle 'mattn/calendar-vim'
" Bundle 'tpope/vim-speeddating'
" Bundle 'vim-scripts/utl.vim'

" Bundle 'tpope/vim-speeddating'
" Bundle 'scrooloose/nerdtree'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'Valloric/YouCompleteMe'
" Bundle 'Shougo/neocomplete.vim'

" Bundle 'scrooloose/syntastic'

"remote editing
" Bundle 'eiginn/netrw'
" Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-vinegar'



filetype plugin indent on
syntax on
set sw=4
set vb
nmap <Space> <Plug>(easymotion-bd-w)
noremap <M-Space> <Plug>(easymotion-bd-f)
" map <Leader>e <Plug>(easymotion-prefix)
" set autoindent
"fast reponse
set nolazyredraw
" set nofsync
set tabstop=4
au FileType python setlocal ts=8 et sw=4 sts=4
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
set mouse=a
" let g:Powerline_symbols = 'unicode'



set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
"set hidden

"Window Splits
" imap <c-j> <c-w>j
" imap <c-k> <c-w>k
" imap <c-l> <c-w>l
" imap <c-h> <c-w>h


"Easymotion default leader
" let g:EasyMotion_leader_key = '<Leader>'
set whichwrap+=<,>,h,l,[,]
" set background=dark
" colorscheme solarized
" let g:molokai_original = 1
" let g:rehash256 = 1
colorscheme molokai
" set background=dark
hi IndentGuidesOdd  ctermbg=234
hi IndentGuidesEven ctermbg=236




"Snipets
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


"screen
let g:ScreenImpl ='Tmux'
" let g:ScreenShellExternal=1
" let g:ScreenShellTerminal='iTerm'
nmap <C-c><C-c> :ScreenShell<cr>
nmap <leader>pd {v}:ScreenSend<cr>}<Down>
" let g:ScreenShellHeight=0 

nmap [p {v}:ScreenSend<cr>}<Down>

" Latex vim latex
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf='Skim'
nmap <silent><leader>pp :w<CR><leader>ll<CR>
imap <silent><F3> <Esc>:w<CR><leader>ll<CR>
map <silent><F3> :w<CR><leader>ll<CR>

"NerdTree
nmap <silent><F2> :NERDTreeToggle<CR>
imap <silent><F2> <Esc>:NERDTreeToggle<CR>

" let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
" let tlist_make_settings  = 'make;m:makros;t:targets'

"Air line
" let g:airline#extensions#tabline#enabled =1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline#extensions#whitespace#enabled = 0
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
			\ 'left' : '',
			\ 'left_alt': '>',
			\ 'right' : '',
			\ 'right_alt' : '<',
			\ 'space' : ' '}

" The Silver Search
if executable('ag')
	" Use ag over grep
	set grepprg=ag\ --nogroup\ --nocolor
	" Use ag in CtrlP for listing files. Lightning fast and respects "     .gitignore
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	"ag is fast enough that CtrlP doesn't need to cache
	let g:ctrlp_use_caching = 0
endif
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"ctrlP
"
" nmap <silent><leader>t :CtrlPBufTagAll<CR>
nmap <silent><leader>r :CtrlPMRUFiles<CR>
nmap <C-T> :CtrlPBufTagAll<CR>
nmap <C-E> :!ctags *<CR>:CtrlPTag<CR>
let g:ctrlp_match_func = {'match':'matcher#cmatch'}
let g:ctrlp_buftag_types={
			\'tex':'',
			\'r':'',
			\}
" \ 'Splus':{
" \	'bin':'ctags',
" \	} ,


" tagbar
nmap <F8> :TagbarToggle<CR>


"cursor in Macos
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
set foldlevelstart=2
set foldlevel=2

set omnifunc=syntaxcomplete#Complete
set backspace =2 
set laststatus =2
set viminfo='1000,f1
set foldmethod=syntax
nnoremap Q <nop>

"R plugin
let r_syntax_folding = 1

"GUI stuff
" set guifont=SourceCodePro-Light:h15
" set guifont=FantasqueSansMono-RegItalic:h18
set guifont=FantasqueSansMono-Regular:h18
set columns=80
set linespace=3
set linebreak
inoremap <D-1> <ESC>1gt
nnoremap <D-1> 1gt
inoremap <D-2> <ESC>2gt
nnoremap <D-2> 2gt
inoremap <D-3> <ESC>3gt
nnoremap <D-3> 3gt
inoremap <D-4> <ESC>4gt
nnoremap <D-4> 4gt
inoremap <C-1> <ESC>1gt
nnoremap ,1 1gt
nnoremap ,2 2gt
nnoremap ,3 3gt
nnoremap ,4 4gt
nnoremap ,t :tabnew<cr>
nnoremap ; :

inoremap <C-Tab> <ESC>:tabn<cr>
nnoremap <C-Tab> :tabn<cr>
inoremap <C-S-Tab> <ESC>:tabp<cr>
nnoremap <C-S-Tab> :tabp<cr>
set go=egmL

"netrw 
let g:netrw_altv          = 1
let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 2
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1
"

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
	if exists("t:expl_buf_num")
		let expl_win_num = bufwinnr(t:expl_buf_num)
		if expl_win_num != -1
			let cur_win_nr = winnr()
			exec expl_win_num . 'wincmd w'
			close
			exec cur_win_nr . 'wincmd w'
			unlet t:expl_buf_num
		else
			unlet t:expl_buf_num
		endif
	else
		exec '1wincmd w'
		Vexplore
		let t:expl_buf_num = bufnr("%")
	endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>
" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Default to tree mode
let g:netrw_liststyle=3

" Change directory to the current buffer when opening files.
set autochdir

"Zen mode
nnoremap <Leader>z :Goyo<CR>
let g:goyo_margin_top=2
let g:goyo_margin_bottom=0

"Disable auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.aux,*.toc,*.pdfsync,*.pyc,*.gz,*.bbl

" autocmd vimenter * if !argc() | NERDTree | endif
" autocmd vimenter * if !argc() | CommandT | endif

" so ~/.vim/neocompl.vim
