local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap('n', '<Esc>', ':noh<CR>', { noremap = true, silent = true }) -- Esc should clear search results
keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true }) -- Esc should clear search results

-- Leader Commands
keymap('n', '<leader>pi', ':PackerInstall<CR>', opts)
keymap('n', '<leader>u', ':UndotreeToggle<CR> ', opts)
keymap('n', '<leader>n', ':NERDTreeToggle<CR>', opts)
keymap('n', '<leader>t', ':vsplit | terminal<CR>', opts)
keymap('n', '<leader>y', ':ToggleTerm<CR>', opts)
keymap('n', '<leader>src', '<cmd>:source ~/.config/nvim/init.lua<CR>', opts)
keymap("n", "<leader>z", "<C-z>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>w", ":w<CR>", opts)

-- Notes/Reminders (r)
keymap('n', '<leader>ro', '<cmd>:ObsidianNew<CR>', opts)

-- Open (o)
keymap('n', '<leader>oc', '<cmd>:sp ~/.config/nvim/cheat-sheet.md<CR>', opts)
keymap('n', '<leader>os', '<cmd>:Startify<CR>', opts)
keymap('n', '<leader>ok', '<cmd>:sp ~/.config/nvim/user/keymaps.lua<CR>', opts)
keymap('n', '<leader>ov', '<cmd>:sp ~/.config/nvim/<CR>', opts)

-- Splits (s)
keymap("n", "<leader>sh", ":split | :Startify<CR>", opts)
keymap("n", "<leader>sv", ":vsplit | :Startify<CR>", opts)

-- Better window navigation (hjkl)
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Telescope (f)
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
keymap('n', '<leader>fs', '<cmd>Telescope git_status<CR>', opts)
keymap("n", "<leader>cc", ":exec 'cd' . expand('%:p:h')<CR>", opts)

-- diepm/vim-rest-console (x)
keymap("n", "<leader>xr", ":call VrcQuery()<CR>", opts)

-- Git Fugitive (g)
keymap("n", "<leader>gs", ":Git<CR>", opts)
keymap("n", "<leader>gc", ":Git commit<CR>", opts)
keymap("n", "<leader>gb", ":Git blame<CR>", opts)
keymap("n", "<leader>gd", ":Git diff<CR>", opts)
keymap("n", "<leader>gl", ":Git log<CR>", opts)
keymap("n", "<leader>gv", ":Gvdiffsplit<CR>", opts)
keymap("n", "<leader>gh", ":Git -c push.default=current push<CR>", opts)

