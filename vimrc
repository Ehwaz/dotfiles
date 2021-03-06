""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Filename: .vimrc                                                         "
"       User: Ehwaz <chrisma516@gmail.com>                                   "
"             Based on Michael J. Smalley's project.                         "
"             (http://github.com/michaeljsmalley/dotfiles)                   "
"                                                                            "
"                                                                            "
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Events .................. General autocmd events                     "
"   03. Theme/Colors ............ Colors, fonts, etc.                        "
"   04. Vim UI .................. User interface behavior                    "
"   05. Text Formatting/Layout .. Text, tab, indentation related             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible            " get rid of Vi compatibility mode. SET FIRST!
set enc=utf-8               " encoding to be used in vim.
scriptencoding utf-8        " encoding used in the script.
set history=111             "command-line history restored
set viminfo=%,\"4,'4,/111,:111,h,f0,<1000,s1000
"           |  |  |  |    |    | |  |     +bump the default limit of 10kb to e.g. 1000kb
"           |  |  |  |    |    | |  +registers store up to 1000 lines each
"           |  |  |  |    |    | +file marks 0-9,A-Z 0=NOT stored
"           |  |  |  |    |    +disable 'hlsearch' loading viminfo
"           |  |  |  |    +command-line history saved
"           |  |  |  +search history saved
"           |  |  +files marks saved
"           |  +lines saved each register (old name for <, vi6.2)
"           +save/restore buffer list

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Events                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

" In Makefiles DO NOT use spaces instead of tabs
autocmd FileType make setlocal noexpandtab
" In Ruby files, use 2 spaces instead of 4 for tabs
" autocmd FileType ruby setlocal sw=2 ts=2 sts=2

" Enable omnicompletion (to use, hold Ctrl+X then Ctrl+O while in Insert mode.
set ofu=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Theme/Colors                                                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme molokai       " set colorscheme
set background=dark       " set background color to 'dark'

" Prettify JSON files
" autocmd BufRead,BufNewFile *.json set filetype=json
" autocmd Syntax json sou ~/.vim/syntax/json.vim

" Prettify Vagrantfile
" autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

" Highlight characters that go over 80 columns
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                " show line numbers
set laststatus=2          " last window always has a statusline
set hlsearch              " Highlight searched phrases.
set incsearch             " Highlight as you type your search.
set ruler                 " Always show info along bottom.
set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Text Formatting/Layout                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent            " auto-indent
set smartindent           " smart-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
"set nowrap                " don't wrap text
"set paste                 " don't add tabs in GUI-pasted codes.
set wrap                  " word wrap visually (as opposed to changing the text in the buffer) 
set linebreak             " only wrap at a character in the breakat option (by default, this includes" ^I!@*-+;:,./?" 
set nolist                " list disables linebreak


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. Extension configuration                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
