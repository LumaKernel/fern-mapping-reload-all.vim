# fern-mapping-reload-all.vim

[![fern plugin](https://img.shields.io/badge/🌿%20fern-plugin-yellowgreen)](https://github.com/lambdalisue/fern.vim)

Mapping to reload from root.

## Installation

Example for [dein](https://github.com/Shougo/dein.vim) with TOML.

```toml
[[plugins]]
repo = 'LumaKernel/fern-mapping-reload-all.vim'
depends = ['fern.vim']
```

## Usage

No default mappings.

You can use this as the action `reload:all` . Please map by yourself.

```vim
function s:init_fern_mapping_reload_all()
    nmap <buffer> R <Plug>(fern-action-reload:all)
endfunction
augroup my-fern-mapping-reload-all
    autocmd! *
    autocmd FileType fern call s:init_fern_mapping_reload_all()
augroup END
```

