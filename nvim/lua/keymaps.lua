local map = vim.keymap.set
vim.g.mapleader = " "

map("i", "jk", "<ESC>")

map("n", "<leader>eo", ":Explore<CR>")
map("n", "<leader>ff", ":find ")

map("n", "<leader>sv", "<C-w>v")
map("n", "<leader>sh", "<C-w>s")
map("n", "<leader>sx", ":close<CR>")

map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
