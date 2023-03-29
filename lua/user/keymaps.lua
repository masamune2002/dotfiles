local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)

-- Leader Commands
keymap('n', '<leader>pi', ':PlugInstall<CR>', opts)
keymap('n', '<leader>u', ':UndotreeToggle<CR> ', opts)
keymap('n', '<leader>n', ':NERDTreeToggle<CR>', opts)
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)
keymap('n', '<leader>oc', '<cmd>:sp ~/.config/nvim/cheat-sheet.txt<CR>', opts)
keymap('n', '<leader>ov', '<cmd>:sp ~/.config/nvim/init.vim<cr>', opts)
keymap('n', '<leader>sv', ':source $MYVIMRC<CR>', opts)

