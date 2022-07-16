runtime! conf/plugins.vim
runtime! conf/plugin-settings.vim
runtime! conf/lang-server.vim

autocmd TerminalWinOpen,BufWinEnter * if &buftype == 'terminal'
    \ | set nonumber
    \ | set norelativenumber
    \ | endif
