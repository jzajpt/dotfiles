  return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- All the lua functions I don't want to write twice.
	use 'nvim-lua/plenary.nvim'

	-- Quickstart configurations for the Nvim LSP client
	use {
		'neovim/nvim-lspconfig',
		-- Companion plugin for nvim-lspconfig that allows you to seamlessly manage LSP servers locally with :LspInstall.
		'williamboman/nvim-lsp-installer',
	}

	-- A light-weight lsp plugin based on neovim built-in lsp with highly a performant UI.
	use 'al3xfischer/lspsaga.nvim'

	-- Plugin that creates missing LSP diagnostics highlight groups for color schemes that don't yet support the Neovim 0.5 builtin LSP client.
	use 'folke/lsp-colors.nvim'

	-- All the lua functions I don't want to write twice.
	use 'tpope/vim-eunuch'

	-- Debug Adapter Protocol client implementation for Neovim (>= 0.5)
	use 'mfussenegger/nvim-dap'

	-- A UI for nvim-dap
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

	-- Tools for better development in rust using neovim's builtin lsp
	use 'simrat39/rust-tools.nvim'

	use 'nvim-telescope/telescope-ui-select.nvim'

	-- Find, Filter, Preview, Pick. All lua, all the time.
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Use RipGrep in Vim and display results in a quickfix list
	use 'jremmen/vim-ripgrep'

	-- A file explorer tree for neovim written in lua
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require("nvim-tree").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}

	-- A async completion framework aims to provide completion
	-- to neovim's built in LSP written in Lua
	use 'nvim-lua/completion-nvim'

	-- vim dashboard
	use 'glepnir/dashboard-nvim'

	-- snippets plugin for nvim in lua
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'

	-- Set of preconfigured snippets for different languages.
	use "rafamadriz/friendly-snippets"

	use 'kyazdani42/nvim-web-devicons'

	-- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	-- Nvim Treesitter configurations and abstraction layer
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
		"SmiteshP/nvim-gps",
		requires = "nvim-treesitter/nvim-treesitter"
	}

	-- A neovim plugin that helps managing crates.io versions
	-- use { 'Saecki/crates.nvim', requires = { 'nvim-lua/plenary.nvim' } }

	-- Atom's iconic One Dark theme for Neovim, written in Lua
	use 'ful1e5/onedark.nvim'

	-- A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}

	-- Super fast git decorations implemented purely in lua/teal.
	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
		config = function()
			require('gitsigns').setup()
		end
	}

	-- Autoformat plugin
	use 'vim-autoformat/vim-autoformat'

	-- Terraform support
	use 'hashivim/vim-terraform'

	-- Justfile support
	use 'NoahTheDuke/vim-just'
end)

