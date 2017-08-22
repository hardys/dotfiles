set bg=dark
set syntax=on
set tabstop=4
set expandtab
set nolist
"set tw=80
set diffopt+=iwhite

:set list listchars=tab:>-,trail:.,extends:>
" Enter the middle-dot by pressing Ctrl-k then .M
:set list listchars=tab:\|_,trail:·
" " Enter the right-angle-quote by pressing Ctrl-k then >>
:set list listchars=tab:»·,trail:·
" " Enter the Pilcrow mark by pressing Ctrl-k then PI
" :set list listchars=tab:>-,eol:¶
" " The command :dig displays other digraphs you can use.

let c_space_errors = 1

:map <F7> :if exists("g:syntax_on") <Bar>
	\   syntax off <Bar>
	\ else <Bar>
	\   syntax enable <Bar>
	\ endif <CR>

if  &diff
    " we don't highlight over length lines in diff mode or it iterferes with
    " the diff highlighting
else
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%80v.\+/
endif

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

"  " Use the same symbols as TextMate for tabstops and EOLs
"set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
