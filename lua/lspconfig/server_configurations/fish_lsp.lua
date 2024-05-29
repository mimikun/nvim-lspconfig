local util = require 'lspconfig.util'

local root_files = {
  'config.fish',
  '$HOME/.config/fish',
  '/usr/share/fish',
}

return {
  default_config = {
    cmd = { 'fish-lsp', 'start' },
    filetypes = { 'fish' },
    root_dir = util.root_pattern(unpack(root_files)),
    --root_dir = function(fname)
    --    local root_files = lspconfig.util.root_pattern(unpack(fish_lsp_root_files))(fname)
    --    return root_files
    --end,
    single_file_support = true,
  },
  docs = {
    description = [[
https://github.com/ndonfris/fish-lsp

LSP implementation for the fish shell language

Installation instructions can be found [here](https://github.com/ndonfris/fish-lsp#installation)
]],
  },
}
