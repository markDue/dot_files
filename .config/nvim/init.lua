-- NEOVIM INITIALIZATION 
require("options")

---
vim.opt.termguicolors = true
require('nvim-highlight-colors').setup({})
--require("cmp").setup({
--        formatting = {
--                format = require("nvim-highlight-colors").format
--        }
--})

require('Comment').setup ()
--require'lspconfig'.pyright.setup{}
require("mason").setup()
--require('lualine').setup{ options = {    
--    icons_enabled = false,
--    theme = 'auto',
--    component_separators = { left = ' ', right = ' '},
--    section_separators = { left = ' ', right = ' '},
--    statusline = {0},
--    }
--}

---
-- Paq Plugin Manager
require "paq" {
    "savq/paq-nvim", -- Let Paq manage itself

    "neovim/nvim-lspconfig",

    { "lervag/vimtex", opt = true }, -- Use braces when passing options

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    "shaunsingh/nord.nvim",

    "chriskempson/base16-vim",

    "olimorris/onedarkpro.nvim",

    "Th3Whit3Wolf/one-nvim",

    "ellisonleao/gruvbox.nvim",

    "numToStr/Comment.nvim",

    "nvim-lualine/lualine.nvim",

    "brenoprata10/nvim-highlight-colors",

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
}

