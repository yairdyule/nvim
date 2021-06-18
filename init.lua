require "mappings"
require "plugins"
require "telescope_config"

local cmd = vim.cmd
local g = vim.g

g.mapleader = ","

cmd "syntax on"
cmd "colo gruvbox-flat"
