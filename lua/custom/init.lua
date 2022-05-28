require "custom.autocmds"

local set = vim.opt --set options
local g = vim.g

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.noswapfile = true


-- dart-vim-plugin configs
g.dart_style_guide = 2
g.dart_format_on_save = 1

-- vim-lsc/vim-lsc-dart default mappings
g.lsc_server_commands = {
  dart = "dart_language_server"
}
g.lsc_enable_autocomplete = v:true
g.lsc_auto_map = {
  defaults = v:true,
  FindReferences = '<silent>lr'
}
