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
    use 'xiyaowong/nvim-transparent'
    -- use "dawikur/base16-gruvbox-scheme"
		use "nvim-lua/plenary.nvim"
    use {
        "folke/zen-mode.nvim",
      config = function()
        require("zen-mode").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
        end
    }
		use "glepnir/galaxyline.nvim"
    use {
            "lewis6991/gitsigns.nvim",
            requires = {
              'nvim-lua/plenary.nvim'
            },
            event = "BufRead",
            config = function()
                require("gitsigns_config").config()
            end
        }
		use "glepnir/dashboard-nvim"
		use "karb94/neoscroll.nvim"

    -- lsp
		use "neovim/nvim-lspconfig"
		use "kabouzeid/nvim-lspinstall"
    use "folke/trouble.nvim"

		use "sbdchd/neoformat"
		use {
      "nvim-telescope/telescope.nvim",
      requires = {
                {"nvim-lua/popup.nvim"},
                {"nvim-lua/plenary.nvim"},
                {"nvim-telescope/telescope-fzf-native.nvim", run = "make"},
                {"nvim-telescope/telescope-media-files.nvim"}
      },
      cmd = "Telescope",
            config = function()
                require("telescope_config").config()
            end
    }

    use "mattn/emmet-vim"
		use "windwp/nvim-autopairs"
		use "alvan/vim-closetag"

		use "terrortylor/nvim-comment"

    use "hrsh7th/nvim-compe"
		use "hrsh7th/vim-vsnip"
		use "rafamadriz/friendly-snippets"

		use "tweekmonster/startuptime.vim"


		use {"lukas-reineke/indent-blankline.nvim"}

    use "tpope/vim-fugitive"

    use "sheerun/vim-polyglot"
    use "sirver/ultisnips"
    use "lervag/vimtex"
    use "honza/vim-snippets"





	end
)

