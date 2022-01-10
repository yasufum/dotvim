let mapleader = "\<SPACE>"
nnoremap ; <CR>

syntax on
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set expandtab
set showcmd
set showmatch
set hlsearch
set laststatus=2
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set autoindent
set scrolloff=4
set smartcase
set textwidth=80
set colorcolumn=+1

set visualbell t_vb=
set noerrorbells

set path+=**
set wildmenu

autocmd FileType python set textwidth=79
autocmd FileType gitcommit set textwidth=72

""" Open vimrc from ':Conf' command.
let s:confdir = "~/.vim/conf"

function! s:open_vimrc(fname) abort
    if a:fname == "" || a:fname == ".vimrc"
        let fpath = "~/.vimrc"
    else
        let fpath = s:confdir."/".a:fname
    endif
    execute "new ".fpath
endfunction

function! s:myconf_complete(lead, line, pos)
    let res = [".vimrc"]
    let tmp = glob(s:confdir."/*")
    let tmp = split(tmp, "\n")
    for f in tmp
        let fname = split(f, "/")[-1]
        call add(res, fname)
    endfor 
    return res
endfunction

command! -nargs=* -complete=customlist,s:myconf_complete Conf call s:open_vimrc(<q-args>)

runtime! conf/main.vim
