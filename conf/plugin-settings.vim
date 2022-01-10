nnoremap <C-n> :NERDTreeToggle<CR>
" enable line numbers
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden = 1

" make sure relative line number is used
autocmd FileType nerdtree setlocal relativenumber

" make sure relative line number is used
autocmd FileType nerdtree setlocal relativenumber
" 'jpo/vim-railscasts-theme'
colorscheme railscasts

" 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1

" 'junegunn/fzf.vim'
let g:fzf_command_prefix = 'Fzf'

" 'vim-scripts/taglist.vim'
let Tlist_Use_Right_Window = 1

" thinca/vim-quickrun
nnoremap <Leader>r :QuickRun<CR>

if !exists("g:quickrun_config")
    "let g:quickrun_config = {}
    let g:quickrun_config = {
      \ "markdown": {
      \   'type': 'markdown/pandoc',
	  \   'cmdopt': '-s',
	  \   'outputter': 'browser',
      \ },
      \ "_": {
      \    "outputter": "popup",
      \ },
      \}
endif

augroup rust_quickrun
  au!
  autocmd BufNewFile,BufRead *.rs let g:quickrun_config.rust = {'exec' : 'cargo run'}
augroup END
