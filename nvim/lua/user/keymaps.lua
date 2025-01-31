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
keymap("n", "<leader>q", ":q<CR>", opts)
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
keymap('n', '<leader>fs', '<cmd>Telescope git_status<CR>', opts)

-- diepm/vim-rest-console
keymap("n", "<leader>xr", ":call VrcQuery()<CR>", opts)

-- Fugitive
keymap("n", "<leader>gs", ":Git<CR>", opts)
keymap("n", "<leader>gc", ":Git commit<CR>", opts)
keymap("n", "<leader>gb", ":Git blame<CR>", opts)
keymap("n", "<leader>gd", ":Git diff<CR>", opts)
keymap("n", "<leader>gl", ":Git log<CR>", opts)
keymap("n", "<leader>gv", ":Gvdiffsplit<CR>", opts)


