vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("i", "<C-BS>", "<C-W>")

vim.keymap.set("n", "<PageUp>", "<C-u>zz")
vim.keymap.set("n", "<PageDown>", "<C-d>zz")
vim.keymap.set("i", "<PageUp>", "<C-o><PageUp>")
vim.keymap.set("i", "<PageDown>", "<C-o><PageDown>")

vim.keymap.set("v", "it", "<Esc>_f<lvt>")
vim.keymap.set("v", "at", "<Esc>_f<vf>")
vim.keymap.set("n", "z:", "_f|zs")
vim.keymap.set("n", "<leader>wd", "mw33Gzt`w_f|zs")

vim.keymap.set('n', '<leader>bl', vim.cmd.bnext)
vim.keymap.set('n', '<leader>bh', vim.cmd.bprev)
