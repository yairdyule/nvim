-- maps lhs to rhs in mode w/ the given options
local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- ctrl-{hjkl} split switching
map("n", "<C-l>", [[<C-w>l]])
map("n", "<C-h>", [[<C-w>h]])
map("n", "<C-j>", [[<C-w>j]])
map("n", "<C-k>", [[<C-w>k]])

map("n", ";", [[:]])
