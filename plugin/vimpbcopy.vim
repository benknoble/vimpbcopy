if exists('g:loaded_vimpbcopy')
  finish
endif
let g:loaded_vimpbcopy = 1

let g:vimpbcopy_maps = get(g:, 'vimpbcopy_maps', {
      \ 'n': '<C-y>',
      \ 'v': '<C-y>',
      \ })

if !empty(g:vimpbcopy_maps.n)
  execute printf(
        \ 'nnoremap %s :set operatorfunc=pbcopy#operator<CR>g@',
        \ g:vimpbcopy_maps.n)
  execute printf(
        \ 'nnoremap %s%s :set operatorfunc=pbcopy#operator<CR>g@',
        \ g:vimpbcopy_maps.n, g:vimpbcopy_maps.n)
endif

if !empty(g:vimpbcopy_maps.v)
  execute printf(
        \ 'vnoremap %s :<C-u>call pbcopy#operator(visualmode(), 1)<CR>',
        \ g:vimpbcopy_maps.v)
endif
