
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.zig_fmt_autosave = 0


vim.keymap.set("n", "<ESC><ESC>", ":nohl<CR>", {})
