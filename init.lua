require "mappings"
require "plugins"
require "settings"
require "telescope_config"
require "treesitter_config"
require "dashboard_config"
require "lsp_config"
require "gitsigns_config"
require "indentline_config"
require "bufferline_config"
require "statusline_config"
require ("neoscroll").setup()
require ("nvim_comment").setup()

local cmd = vim.cmd
local g = vim.g

g.mapleader = ","
g.maplocalleader = ","

cmd "syntax on"
cmd "colo gruvbox-flat"
