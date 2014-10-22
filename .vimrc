" vim:fdm=marker
" vim:foldlevel=0
" vim:foldlevelstart=0
if has('nvim')
    runtime! plugin/python_setup.vim
endif
" Vundle  {{{
" set nocompatible              " be iMproved
" filetype off                  " required!
" set rtp+=~/.vim/bundle/Vundle.vim/
" call vundle#begin()
call plug#begin('~/.vim/plugged')
"=======================================
""vundle
"=======================================
Plug 'gmarik/Vundle.vim'
Plug 'chrisbra/Recover.vim'
" Plug 'Chiel92/vim-autoformat'
" Plug 'Shougo/vimproc.vim'
" Plug 'Shougo/neomru.vim'
" Plug 'Shougo/unite.vim'
" Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jazzcore/ctrlp-cmatcher'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
" Plug 'xolox/vim-notes'
" Plug 'xolox/vim-misc'
Plug 'adouzzy/workflowish'
" Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe'
" Plug 'ervandew/supertab'
" Plug 'Shougo/neocomplete.vim'
" Plug 'terryma/vim-expand-region'
"=======================================
"Optional lightweight
"=======================================
" Plug 'jcfaria/vim-r-plugin'
Plug 'christoomey/vim-tmux-navigator'
"=======================================
"ui related
"=======================================
"Plug 'tomasr/molokai'
" Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'bling/vim-airline'
" Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
"=======================================
"language support
"=======================================
" Plug 'davidhalter/jedi-vim'
" Plug 'gerw/vim-latex-suite'
" Plug 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plug 'jcf/vim-latex',{'for': 'tex'}
" Plug 'neilagabriel/vim-geeknote', {'branch' : 'adouzzy'}
" Plug 'latex-box-team/latex-box'

"=======================================
"window managment
"=======================================
" Plug 'ervandew/screen'
"=======================================
" move around
"=======================================
" Plug 'lokaltog/vim-easymotion'
Plug 'justinmk/vim-sneak'
"=======================================
" ide stuff
"=======================================
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
" Plug 'terryma/vim-multiple-cursors'
Plug 'kris89/vim-multiple-cursors'
" Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
"=======================================
"" ORG MODE
"=======================================
" Plug 'vim-voom/VOoM'
" Plug 'jceb/vim-orgmode'
" Plug 'mattn/calendar-vim'
"=======================================
""Snips
"=======================================
" Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'DamienCassou/texlint'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
" Plug 'airblade/vim-gitgutter'
" call vundle#end()
call plug#end()
filetype plugin indent on
syntax on
"}}}
" General Settings {{{
" General {{{
set autoread
set autochdir
set hlsearch
set noerrorbells
set novisualbell
set lazyredraw
set ttyfast
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.aux,*.toc,*.pdfsync,*.pyc,*.gz,*.bbl,*.so
set t_Co=256
set sw=4
set autoindent
set si "smart indent
set wrap "wrap lines

"fast reponse
" set nolazyredraw
" set nofsync
set tabstop=4
set expandtab
set smarttab
au FileType python setlocal ts=8 et sw=4 sts=4
au FileType python setlocal fdm=indent
" let python_highlight_all = 1
" let g:pymode_rope=0
let g:pymode_rope_complete_on_dot = 0
au FileType workflowish setlocal ts=2 et sw=2 sts=2
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
set mouse=a
set whichwrap+=<,>,h,l,[,]
" let g:Powerline_symbols = 'unicode'
set foldlevelstart=2
set foldlevel=2
set foldmethod=syntax
set omnifunc=syntaxcomplete#Complete
set backspace =2 
set laststatus =2
let vimrplugin_term = "/Applications/iTerm.app/Contents/MacOS/iTerm"
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"}}}
" tmp directories{{{
set backupdir=~/.vim/backup,.,/tmp
set directory=~/.vim/swp,.,/tmp
set undofile
set undodir=~/.vim/undo
" "set hidden
"}}}
"Leader {{{
let mapleader = ','
let g:mapleader = ','
let maplocalleader = '\'
let g:maplocalleader = '\'
" nmap <leader>d :bd<cr>
nmap <leader>n :bnext<cr>
nmap <leader>h :bnext<cr>
nmap <leader>p :bprevious<cr>
nmap <leader>l :bprevious<cr>
nmap <leader>d :bp <bar> bd #<cr>
"}}}
" Shortcuts{{{
nnoremap Q <nop>
imap jk <Esc>
imap kj <Esc>
vnoremap <cr> <Esc>


set shell=/bin/bash
" noremap <C-s> :sh<cr>
cnoreabbrev gw Gwrite
"best shortcut ever
nnoremap ; :
vnoremap ; :
"}}}
"GUI stuff {{{
" set guifont=SourceCodePro-Light:h15
" set guifont=FantasqueSansMono-RegItalic:h18
" set guifont=FantasqueSansMono-Regular:h18
if has ("gui_running")
    if has ("gui_macvim")
        set guifont=Hermit-light:h15
        set guifont=Hermit-light:h15
        set linespace=0
    elseif has("gui_gtk2")
        set guifont=Hermit\ Medium\ 13
        set guifont=Hermit\ Light\ 15
        set linespace=-2
    endif
endif
" set columns=72
set go=egL
" set background=dark
" colorscheme solarized
" let g:molokai_original = 1
" let g:rehash256 = 1
" colorscheme molokai_old
colorscheme jellybeans
hi IndentGuidesOdd  ctermbg=234
hi IndentGuidesEven ctermbg=236


"}}}
set autochdir
" Restore Position {{{

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction
if has("folding")
    function! UnfoldCur()
        if !&foldenable
            return
        endif
        let cl = line(".")
        if cl <= 1
            return
        endif
        let cf  = foldlevel(cl)
        let uf  = foldlevel(cl - 1)
        let min = (cf > uf ? uf : cf)
        if min
            execute "normal!" min . "zo"
            return 1
        endif
    endfunction
endif
augroup resCur
    autocmd!
    if has("folding")
        autocmd BufWinEnter * if ResCur() | call UnfoldCur() | endif
    else
        autocmd BufWinEnter * call ResCur()
    endif
augroup END
"}}}
"}}}
"Plugins {{{
let g:multi_cursor_quit_key='<cr>'
" Sensible{{{
" set backspace
" set incsearch
" set listchars
"}}}
" "Unite {{{
" nnoremap <leader>f :Unite -start-insert buffer file<cr>
" nnoremap <leader>r :Unite -start-insert file_mru<cr>
" nnoremap <leader>g :<C-u>Unite -start-insert file_rec/async:!<CR>
" nnoremap <leader>b :Unite buffer<cr>
"
" "}}}
"Snipets {{{
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" }}}
"tube {{{
" if has ("gui_macvim")
"     let g:tube_terminal = 'iterm'
"     nmap <C-c><C-c> :Tube<cr>
"     nmap <leader>pd {v}:Tube@<cr>}<Down>
"     nmap [p {v}k$:Tube@<cr>}<Down>
"     nmap [o :TubeFocus<cr>
" else
"     "screen
"     let g:ScreenImpl ='GnuScreen'
"     " let g:ScreenImpl = 'Tmux'
"     let g:ScreenShellExternal=1
"     " let g:ScreenShellTerminal='iTerm2.app'
"     " let g:ScreenShellTerminal='/Applications/iTerm.app/Contents/MacOS/iTerm'
"     let g:ScreenShellTerminal='terminator'
"     nmap <C-c><C-c> :ScreenShell<cr>
"     nmap <leader>pd {v}:ScreenSend<cr>}<Down>
"     nmap [p {v}k$:ScreenSend<cr>}<Down>
"     " let g:ScreenShellHeight=0 
" endif
"}}}
"Tbone {{{
 nmap [p {v}k$:Twrite 1<cr>}<Down>

" }}}}
"CtrlP{{{
nmap <silent><leader>r :CtrlPMRUFiles<CR>
nmap <C-t> :CtrlPBufTagAll<CR>
nmap <C-e> :!ctags *<CR>:CtrlPTag<CR> 
let g:ctrlp_open_new_file = 't'
let g:ctrlp_switch_buffer = 'ET'
" let g:ctrlp_reuse_window = 'netrw\|buf\|help'
let g:ctrlp_max_files = 500
let g:ctrlp_max_depth = 4
" nmap <silent><leader>t :CtrlPBufTagAll<CR>
let g:ctrlp_match_func = {'match':'matcher#cmatch'}
let g:ctrlp_open_new_file='t'
let g:ctrlp_buftag_types={
            \'tex':'',
            \'r':'',
            \}
let g:ctrlp_mruf_include='\.c$\|\.py$\|\.pyx$\|\.r$\|\.cpp$\|\.bib$\|\.tex$'
let g:ctrlp_mruf_case_sensitive=0
" \ 'Splus':{
" \	'bin':'ctags',
" \	} ,
"}}}
" "alignment {{{
" vmap <Enter> <Plug>(EasyAlign)
" nmap <Leader>a <Plug>(EasyAlign)
" "}}}
"Goyo Zen mode {{{
nnoremap <Leader>z :Goyo<CR>
let g:goyo_margin_top=2
let g:goyo_width=74
let g:goyo_margin_bottom=0
" Color name (:help cterm-colors) or ANSI code
" let g:limelight_conceal_ctermfg = 'gray'
" let g:limelight_conceal_ctermfg = 240
" Color name (:help gui-colors) or RGB color
" let g:limelight_conceal_guifg = 'DarkGray'
" let g:limelight_conceal_guifg = '#777777'
" " Default: 0.5
" let g:limelight_default_coefficient = 0.7
" function! GoyoBefore()
"     Limelight
" endfunction
" function! GoyoAfter()
"     Limelight!
" endfunction
" let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]
"

"}}}
"Sneak{{{
set smartcase
set ignorecase
let g:sneak#streak = 0
let g:sneak#s_next = 1
let g:sneak#use_ic_scs = 1
" 1-character enhanced 'f'
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
" visual-mode
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
" operator-pending-mode
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
" 1-character enhanced 'f'
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
" visual-mode
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
" operator-pending-mode
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T
"}}}
" Latex vim latex{{{

nmap <silent><F4> :!openpdftex<CR><CR>
let g:tex_flavor='latex'
let g:Tex_IgnoreLevel=0
let g:Tex_GotoError=0
let g:Tex_FoldedEnvironments=',comment'
let g:Tex_ViewRule_pdf='Skim'
let g:Tex_CompileRule_pdf='&& rubber -dq $*'
let g:Tex_DefaultTargetFormat = 'pdf'
" let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'Skim'
let g:Tex_FormatDependency_ps  = 'dvi,ps'
let g:Tex_FormatDependency_pspdf = 'dvi,ps,pspdf'
let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf'

if has ("gui_running")
    set t_Co=256
    if has ("gui_macvim")
        let g:Tex_ViewRule_pdf='Skim'
        let g:Tex_CompileRule_pdf='&& rubber -dq $*'
        let g:Tex_DefaultTargetFormat = 'pdf'
        " let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
        let g:Tex_ViewRule_pdf = 'Skim'
        let g:Tex_FormatDependency_ps  = 'dvi,ps'
        let g:Tex_FormatDependency_pspdf = 'dvi,ps,pspdf'
        let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf'

    elseif has("gui_gtk2")
        let g:tex_flavor='latex'
        let g:Tex_ViewRule_pdf='evince'
        let g:Tex_CompileRule_pdf='&& rubber -dq $*'
        let g:Tex_CompileRule_dvi='latex -interaction=nonstopmode --src-specials $*'
    endif
endif

"Latex
" nmap <silent><leader>pp :w<CR><leader>ll<CR>
" imap <silent><F3> <Esc>:w<CR><leader>ll<CR>
nmap <silent><F3> :w<CR>:!rubberme&<CR><CR>
imap <silent><F3> <Esc>:w<CR>:!rubberme&<CR><CR>
" imap <silent><F6> <Esc>:GitGutterToggle<CR>
" nmap <silent><F6> :GitGutterToggle<CR>
" imap <buffer> ]] <Plug>LatexCloseCurEnv
let g:Tex_TreatMacViewerAsUNIX=1
"}}}
" Status lines{{{
"lightline
let g:lightline= {
            \ 'colorscheme' : 'jellybeans'
            \}
"Tmux line
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'y'    : ['%R', '%a']}
"
      " \'x'    : '#(pmset -g batt | egrep "([0-9]+\%)" -o)',
      " \'x' : ['#(uptime | cut -d ' ' -f 10)', '#(pmset -g batt | egrep ''([0-9]+\%)'' -o | cut -f1 -d'';'')'],
"Air line
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:tmuxline_separators = {
			\ 'left' : '',
			\ 'left_alt': '>',
			\ 'right' : '',
			\ 'right_alt' : '<',
			\ 'space' : ' '}
" }}}
"R plugin{{{
let r_syntax_folding = 1
"}}}
" neocompl{{{
" so ~/.vim/neocompl.vim
" au FileType tex let g:neocomplete#disable_auto_complete = 1
"
" function! Multiple_cursors_before()
"     exe 'NeoCompleteLock'
"     echo 'Disabled autocomplete'
" endfunction
" function! Multiple_cursors_after()
"     exe 'NeoCompleteUnlock'
"     echo 'Enabled autocomplete'
" endfunction
"}}}
" vim expand region {{{
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"}}}
"Not Using {{{

" NerdTree {{{
"NerdTree Settings
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.o$', '\~$', '\.aux$','\.gz$','\.toc$','\.swp$','\.pdfsync$','\.dtx$','\.bbl$','\.blg$','\.fls$','\.fdb_latexmk','\.latexmain$','\.pyc$']
nmap <silent><F2> :NERDTreeToggle<CR>
imap <silent><F2> <Esc>:NERDTreeToggle<CR>
" nmap <silent><F10> :VoomToggle<CR>
" imap <silent><F10> <Esc>:VoomToggle<CR>
" let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
" let tlist_make_settings  = 'make;m:makros;t:targets'
"}}}
" EasyMotion{{{
" let g:EasyMotion_keys = 'fdsartewqbnvmcyuiop;lkj'
" nmap <Space> <Plug>(easymotion-bd-w)
" noremap <M-Space> <Plug>(easymotion-bd-f)
" let g:EasyMotion_do_shade = 0
" let g:EasyMotion_do_mapping = 1
" nmap s <Plug>(easymotion-s)
" nmap t <Plug>(easymotion-t)
" " JK motions: Line motions
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" " Turn on case sensitive feature
" let g:EasyMotion_smartcase = 1
" let g:EasyMotion_enter_jump_first = 1
" let g:EasyMotion_space_jump_first = 1
"}}}
" let g:ycm_min_num_of_chars_for_completion = 5
" The Silver Search {{{
" if executable('ag')
" 	" Use ag over grep
" 	set grepprg=ag\ --nogroup\ --nocolor
" 	" Use ag in CtrlP for listing files. Lightning fast and respects "     .gitignore
" 	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"
" 	"ag is fast enough that CtrlP doesn't need to cache
" 	let g:ctrlp_use_caching = 0
" endif
"}}}
"vim-Org {{{
let g:org_agenda_files = ['~/org/work.org','~/org/home.org']
let g:org_todo_keywords = ['TODO(t)','PENDING(p)','|','DONE(d)','CANCELED(c)']
let g:org_heading_highlight_colors = ['Title']
"}}}
" "netrw {{{
" let g:netrw_altv          = 1
" let g:netrw_fastbrowse    = 2
" let g:netrw_keepdir       = 0
" let g:netrw_liststyle     = 2
" let g:netrw_retmap        = 1
" let g:netrw_silent        = 1
" let g:netrw_special_syntax= 1
"
" "  Hit enter in the file browser to open the selected
" " file with :vsplit to the right of the browser.
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
"
" " Default to tree mode
" let g:netrw_liststyle=3
" "}}}
" tagbar{{{
nmap <F8> :TagbarToggle<CR>
"}}}
"}}}
