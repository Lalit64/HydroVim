local status_ok, packer = pcall(require, "packer")
if status_ok then
    packer.startup({
        function(use)
            use 'wbthomason/packer.nvim'
            -- LSP Config & Aesthetics + TreeSitter
            use 'neovim/nvim-lspconfig'
            use 'williamboman/nvim-lsp-installer'
            use 'onsails/lspkind-nvim'
            use 'glepnir/lspsaga.nvim'
            use 'stevearc/aerial.nvim'
            use 'nvim-treesitter/nvim-treesitter'
            use "jose-elias-alvarez/null-ls.nvim"
            use 'MunifTanjim/prettier.nvim'
            -- Completion with nvim-cmp
            use 'hrsh7th/nvim-cmp'
            use 'hrsh7th/cmp-nvim-lsp'
            use 'hrsh7th/cmp-buffer'
            use 'L3MON4D3/LuaSnip'
            -- NeoVim Telescope
            use 'nvim-telescope/telescope.nvim'
            use 'ahmedkhalf/project.nvim'
            -- NvimTree: File Explorer
            use 'kyazdani42/nvim-tree.lua'
            -- Alpha.nvim : Homepage
            use 'goolord/alpha-nvim'
            -- UI Customization
            use 'stevearc/dressing.nvim'
            use 'MunifTanjim/nui.nvim'
            use 'gelguy/wilder.nvim'
            use 'nvim-lua/popup.nvim'
            use 'akinsho/bufferline.nvim' -- Bufferline
            use 'hoob3rt/lualine.nvim' -- Statusline
            use 'rcarriga/nvim-notify' -- vim.notify customization
            use 'kyazdani42/nvim-web-devicons' -- devicons
            -- Extra Bits
            use 'nvim-lua/plenary.nvim'
            use 'windwp/nvim-autopairs' -- Autopairs like {} and ""
            use 'folke/which-key.nvim' -- Visualise Keybindings using the leader key
            use "karb94/neoscroll.nvim" -- Smooth scrolling
            use "akinsho/toggleterm.nvim" -- Floating Terminal
            use "lewis6991/impatient.nvim" -- Lazy Loader
            use "olimorris/onedarkpro.nvim" -- Colorscheme
            use "norcalli/nvim-colorizer.lua" -- css # and rgb color highlights
            use "folke/zen-mode.nvim" -- Zen Mode for focus
            use "folke/twilight.nvim" -- Zen Mode inactive portion dimming

        end,
        config = {
            ensure_dependencies = true,
            display = {
                open_fn = function()
                    return require("packer.util").float({ border = "rounded" })
                end
            }
        }})
end

require("plugins.configs")
