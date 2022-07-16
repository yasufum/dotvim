runtime! conf/plugins.vim
runtime! conf/plugin-settings.vim
runtime! conf/lang-server.vim

nnoremap <C-j><C-p> /。<CR>:noh<CR>

autocmd TerminalWinOpen,BufWinEnter * if &buftype == 'terminal'
    \ | set nonumber
    \ | set norelativenumber
    \ | endif
