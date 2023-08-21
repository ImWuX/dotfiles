vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    use("christianchiarulli/nvcode-color-schemes.vim")
    use({
        "nvim-telescope/telescope.nvim", tag = "0.1.2",
        requires = { {"nvim-lua/plenary.nvim"} }
    })
    use("nvim-treesitter/nvim-treesitter")
    use("nvim-lua/plenary.nvim")
    use("ThePrimeagen/harpoon")

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            -- LSP
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            
            -- Autocomplete
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    })
end)
