:set visualbell
:set smartindent
:set ai
:set incsearch
:set hlsearch
:set so=6
:set guifont=Monospace\ 8
:set guioptions=agimrLt
:set nocp
:set backspace=2
:set shiftwidth=4
:set softtabstop=4
:set tabstop=4
:set formatoptions=croq
:set smartindent
:set expandtab
:set shortmess=filnxtToOI
:set laststatus=2
:set nobackup
:set grepprg=ack
:set encoding=utf-8
:set tags=./tags,/usr/tags
:set statusline=%(%F%m%r%h%w%)\ \ \ %=[\%03.3b/0x\%02.2B]\ \ \ %(%l,%v\ \ \ [%p%%]%)
:set listchars=tab:>-,trail:!
:set list
:set t_Co=8
:set t_md=
:syntax on
:colorscheme default
:inoremap # X#

" Internal lookup
:map <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" map / for visual mode to work like / in normal mode
:vmap / y/<C-R>"<CR>

" Special indentation for html
:autocmd BufRead *.html,<HTML> set tabstop=2
:autocmd BufRead *.html,<HTML> set softtabstop=2
:autocmd BufRead *.html,<HTML> set shiftwidth=2
:autocmd BufRead *.html,<HTML> set autoindent

" Teh automagic F6 button!
" For with to debug
:autocmd FileType c map <F6> <Esc>:!gdb<CR>

" Teh automagic F7 button
" To test
":autocmd FileType perl map <F7> <Esc>:!perl -cw %<CR>
:autocmd FileType make map <F7> <Esc>:make test<CR>

" Teh automagic F8 button!
" To compile/execute
":autocmd FileType perl map <F8> <Esc>:!perl %<CR>
:autocmd FileType lua map <F8> <Esc>:!lua %<CR>
:autocmd FileType make map <F8> <Esc>:w<CR>:make -f %<CR>
:autocmd FileType c map <F8> <Esc>:w<CR>:make<CR>

autocmd FileType c set omnifunc=ccomplete#Complete

au BufNewFile,BufRead *.rl      setf ragel

" For some reason my default Leader is undefined...
:let g:Perl_MapLeader='\'

" force plugins on
:filetype plugin on

" Ctrl-based tabbing ftw
:map <silent> <C-E> :tabnew<CR>:E<CR>
:map <silent> <C-N> :tabnext<CR>
:map <silent> <C-P> :tabprevious<CR>
