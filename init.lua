require "mappings"
require "plugins"
require "settings"
require "telescope_config"
require "treesitter_config"
require "dashboard_config"
require "lsp_config"
-- require "gitsigns_config"
require "indentline_config"
require "bufferline_config"
require "statusline_config"
require ("neoscroll").setup()
require ("nvim_comment").setup()

local cmd = vim.cmd
local g = vim.g

g.mapleader = ","
g.maplocalleader = ","
g.base16_transparent_background = 1

cmd "syntax on"

local base16 = require "base16"
base16(base16.themes["gruvbox-dark-pale"], true)
-- print(vim.inspect(base16.theme_names()))
--
-- cmd "colo gruvbox-flat"
