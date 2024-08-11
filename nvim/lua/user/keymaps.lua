local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Leader Commands
keymap('n', '<leader>pi', ':PlugInstall<CR>', opts)
keymap('n', '<leader>u', ':UndotreeToggle<CR> ', opts)
keymap('n', '<leader>n', ':NERDTreeToggle<CR>', opts)

-- Open
keymap('n', '<leader>oc', '<cmd>:sp ~/.config/nvim/cheat-sheet.txt<CR>', opts)
keymap('n', '<leader>ok', '<cmd>:sp ~/.config/nvim/user/keymaps.lua<CR>', opts)
keymap('n', '<leader>ov', '<cmd>:sp ~/.config/nvim/<CR>', opts)

keymap('n', '<leader>src', '<cmd>:source ~/.config/nvim/init.lua<CR>', opts)
keymap("n", "<leader>z", "<C-z>", opts)
keymap("n", "<leader>q", ":wq<CR>", opts)
keymap("n", "<leader>w", ":w<CR>", opts)

-- Splits
keymap("n", "<leader>sh", ":split | :Startify<CR>", opts)
keymap("n", "<leader>sv", ":vsplit | :Startify<CR>", opts)

-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)

