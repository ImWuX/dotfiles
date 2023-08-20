require("plugins")

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.number = true
vim.o.guicursor = "n-v-i-c-ci-ve-sm:ver25,r-cr-o:hor20"

require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true
    }
})
