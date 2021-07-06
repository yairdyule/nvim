local M = {}

M.config = function()
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

-- Telescope
map("n", "<Leader>gt", [[<Cmd> Telescope git_status <CR>]], opt)
map("n", "<Leader>cm", [[<Cmd> Telescope git_commits <CR>]], opt)
map("n", "<Leader>ff", [[<Cmd> Telescope find_files <CR>]], opt)
map("n", "<Leader>fg", [[<Cmd> Telescope live_grep <CR>]], opt)
map("n", "<Leader>fp", [[<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>]], opt)
map("n", "<Leader>fb", [[<Cmd>Telescope buffers<CR>]], opt)
map("n", "<Leader>fh", [[<Cmd>Telescope help_tags<CR>]], opt)
map("n", "<Leader>fo", [[<Cmd>Telescope oldfiles<CR>]], opt)

map("n", ";", [[:]])

end

return M
