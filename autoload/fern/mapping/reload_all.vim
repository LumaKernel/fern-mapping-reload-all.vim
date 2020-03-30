function! fern#mapping#reload_all#init(disable_default_mappings) abort
  nnoremap <buffer><silent> <Plug>(fern-action-reload:all)   :<C-u>call <SID>call('reload_all')<CR>
endfunction

function! s:call(name, ...) abort
  return call(
        \ 'fern#mapping#call',
        \ [funcref(printf('s:map_%s', a:name))] + a:000,
        \)
endfunction

function! s:map_reload_all(helper) abort
  let node = a:helper.sync.get_root_node()
  return a:helper.async.reload_node(node.__key)
        \.then({ -> a:helper.async.redraw() })
endfunction

