local packer = require "packer"
local use = packer.use

return packer.startup(
	function()
		use "wbthomason/packer.nvim"

    -- looks
		use "kyazdani42/nvim-web-devicons"
		use "eddyekofo94/gruvbox-flat.nvim"
		use "nvim-treesitter/nvim-treesitter"
		use "norcalli/nvim-colorizer.lua"
    use "akinsho/nvim-bufferline.lua"
    use "siduck76/nvim-base16.lua"
    use "dawikur/base16-gruvbox-scheme"
		use "glepnir/galaxyline.nvim"
		use "lewis6991/gitsigns.nvim"
		use "glepnir/dashboard-nvim"
		use "karb94/neoscroll.nvim"

    -- lsp
		use "neovim/nvim-lspconfig"
		use "kabouzeid/nvim-lspinstall"
    use "folke/trouble.nvim"

		use "sbdchd/neoformat"
		use "nvim-lua/plenary.nvim"
		use "nvim-telescope/telescope.nvim"
		use "nvim-telescope/telescope-media-files.nvim"
		use "nvim-lua/popup.nvim"

    use "mattn/emmet-vim"
		use "windwp/nvim-autopairs"
		use "alvan/vim-closetag"

		use "terrortylor/nvim-comment"

    use "hrsh7th/nvim-compe"
		use "hrsh7th/vim-vsnip"
		use "rafamadriz/friendly-snippets"

		use "tweekmonster/startuptime.vim"


		use "folke/which-key.nvim"
		use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}

    use "tpope/vim-fugitive"


	end
)
