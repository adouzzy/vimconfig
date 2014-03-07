set nocompatible              " be iMproved
filetype off                  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
""vundle
Bundle 'gmarik/vundle'
"UI related
Bundle 'tomasr/molokai'
Bundle 'junegunn/goyo.vim'
" Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'tpope/vim-surround'
Bundle 'bling/vim-airline'
"Language Support
Bundle 'jcfaria/Vim-R-plugin'
" Bundle 'davidhalter/jedi-vim'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'gerw/vim-latex-suite'
Bundle "derekwyatt/vim-scala"
"window managment
Bundle 'ervandew/screen'
Bundle 'christoomey/vim-tmux-navigator'
" Bundle 'ervandew/supertab'
" Move around
Bundle 'Lokaltog/vim-easymotion'
" IDE stuff
Bundle 'kien/ctrlp.vim'
" Bundle 'JazzCore/ctrlp-cmatcher'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'jceb/vim-orgmode'
Bundle "scrooloose/nerdtree"
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"
Bundle "Valloric/YouCompleteMe"

filetype plugin indent on
syntax on
set sw=4
nmap <Space> <Plug>(easymotion-bd-f)
" set autoindent
" set lazyredraw
set tabstop=4
au FileType python setlocal ts=8 et sw=4 sts=4
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
" let g:Powerline_symbols = 'unicode'

"set hidden

"Window Splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


"Easymotion default leader
" let g:EasyMotion_leader_key = '<Leader>'
" set whichwrap+=<,>,h,l,[,]
" set background=dark
"colorscheme solarized
" let g:molokai_original = 1
" let g:rehash256 = 1
colorscheme molokai
" set background=dark
hi IndentGuidesOdd  ctermbg=234
hi IndentGuidesEven ctermbg=236




"Snipets
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


"screen
let g:ScreenImpl = 'Tmux'
nmap <C-c><C-c> :ScreenShell<cr>
nmap <leader>pd {v}:ScreenSend<cr>}<Down>
let g:ScreenShellHeight = 0 

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
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline#extensions#whitespace#enabled = 0


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
" let g:ctrlp_match_func = {'match':'matcher#cmatch'}
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

"Zen mode
nnoremap <Leader>z :Goyo<CR>
let g:goyo_margin_top=2
let g:goyo_margin_bottom=0

" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.aux,*.toc,*.pdfsync,*.pyc,*.gz,*.bbl

" autocmd vimenter * if !argc() | NERDTree | endif
" autocmd vimenter * if !argc() | CommandT | endif
