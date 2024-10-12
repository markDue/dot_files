-- Options for Neovim

local set = vim.opt
local wo = vim.wo
local cmd = vim.cmd

--set.guicursor = ""
set.termguicolors = true
--set t_Co=256

vim.o.clipboard = 'unnamedplus'
vim.o.mouse = 'a'

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.autoindent = true
set.smartindent = true
set.laststatus = 0

set.background = "dark"
vim.cmd.colorscheme("onedark_vivid")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", {	bg = "none" })
vim.g.one_nvim_transparent_bg = true

wo.cursorline = true
wo.cursorlineopt = "both"
--wo.colorcolumn ="yes"
wo.cursorcolumn = false
wo.nu = true
set.wrap = true
set.colorcolumn = "80"
set.swapfile = false
set.backup = false
set.hlsearch = false
set.incsearch = false

set.scrolloff = 8
set.signcolumn = "yes"

set.updatetime = 50
vim.g.mapleader = " "
