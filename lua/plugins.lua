local packer = require "packer"
local use = packer.use

return packer.startup(
	function() 
		use "wbthomason/packer.nvim"
		use "eddyekofo94/gruvbox-flat.nvim"
		use "nvim-treesitter/nvim-treesitter"
		use "neovim/nvim-lspconfig"
		use "norcalli/nvim-colorizer.lua"
		use "sbdchd/neoformat"
		use "nvim-lua/plenary.nvim"
		use "nvim-telescope/telescope.nvim"
		use "nvim-telescope/telescope-media-files.nvim"
		use "nvim-lua/popup.nvim"
		use "kyazdani42/nvim-web-devicons"
		use "ryanoasis/vim-devicons"

	end
)
