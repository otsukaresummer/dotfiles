let g:lightline = {
    \ 'colorscheme': 'landscape',
    \ 'active' : {
    \     'right' : [ ['syntastic', 'lineinfo'],
    \                 ['percent'],
    \                 ['fileformat', 'filename', 'filetype']]
    \ },
    \ 'component_expand' : {
    \   'syntastic': 'SyntasticStatuslineFlag'
    \ }, 
    \ 'component_type' : {
    \   'syntastic' : 'error'
    \ }
\}
let g:syntastic_mode_map = {'mode' : 'passive'}
augroup AutoSyntastic
    autocmd!
    autocmd BufWritePost *.c,*.cpp,*.cc,*.java call s:syntastic()
augroup END
function! s:syntastic()
    SyntasticCheck
    call lightline#update()
endfunction

