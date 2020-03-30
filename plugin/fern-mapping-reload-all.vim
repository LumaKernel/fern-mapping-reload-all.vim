if exists('g:fern_mapping_reload_all_loaded')
  finish
endif
let g:fern_mapping_reload_all_loaded = 1

call extend(g:fern#mapping#mappings, ['reload_all'])

