function! s:configure_lsp() abort
  setlocal omnifunc=lsp#complete
  nnoremap <buffer> <C-]> :<C-u>LspDefinition<CR>
  nnoremap <buffer> <C-h> :<C-u>LspHover<CR>
  "nnoremap <buffer> <C-@> <C-t>
  nnoremap <buffer> <C-l>d :<C-u>LspDefinition<CR>
  nnoremap <buffer> <C-l>r :<C-u>LspReferences<CR>
  nnoremap <buffer> <C-l>t :<C-u>LspTypeDefinition<CR>
  nnoremap <buffer> <C-l>s :<C-u>LspDocumentSymbol<CR>
  nnoremap <buffer> <C-l>S :<C-u>LspWorkspaceSymbol<CR>
  nnoremap <buffer> <C-l>f :<C-u>LspDocumentFormat<CR>
  vnoremap <buffer> <C-l>f :<C-u>LspDocumentRangeFormat<CR>
  nnoremap <buffer> <C-l>h :<C-u>LspHover<CR>
  nnoremap <buffer> <C-l>i :<C-u>LspImplementation<CR>
  nnoremap <buffer> <C-l>e :<C-u>LspNextError<CR>
  nnoremap <buffer> <C-l>E :<C-u>LspPreviousError<CR>
  nnoremap <buffer> <C-l>N :<C-u>LspRename<CR>
endfunction

" Do ALE diagnostic
let g:lsp_diagnostics_enabled = 0

if executable('pyls')
   autocmd User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': { server_info -> ['pyls'] },
                \ 'whitelist': ['python'],
                \ 'workspace_config': {'pyls': {'plugins': {
                \   'pycodestyle': {'enabled': v:false},
                \   'jedi_definition': {'follow_imports': v:true, 'follow_builtin_imports': v:true},}}}
                \})
    "autocmd BufWritePre *.py LspDocumentFormatSync
    autocmd FileType python call s:configure_lsp()
endif

if executable('bash-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'whitelist': ['sh'],
        \ })
    "autocmd BufWritePre *.sh LspDocumentFormatSync
    autocmd FileType sh call s:configure_lsp()
endif

if executable('rls')
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
        \ 'whitelist': ['rust'],
        \ })
    "autocmd BufWritePre *.rs LspDocumentFormatSync
    autocmd FileType rust call s:configure_lsp()
endif

if executable('gopls')
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls']},
        \ 'whitelist': ['go'],
        \ })
    autocmd FileType go call s:configure_lsp()
endif
