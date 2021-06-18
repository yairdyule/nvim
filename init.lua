require "mappings"
require "plugins"
require "telescope_config"
require "treesitter_config"

local cmd = vim.cmd
local g = vim.g

g.mapleader = ","
g.maplocalleader = ","

cmd "syntax on"
cmd "colo gruvbox-flat"
