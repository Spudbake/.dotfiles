

vim.g.mapleader = " "
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
-- vim.g.maplocalleader = ' '

-- vim.o.clipboard = 'unnamedplus'

vim.o.number = true
vim.o.relativenumber = true

--vim.o.signcolumn = 'yes'

vim.o.tabstop = 4
vim.o.shiftwidth = 4

