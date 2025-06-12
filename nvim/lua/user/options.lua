vim.g.mapleader=" "                        -- map leader to spacebar

vim.g.sonic_pi_command = 'sonic_pi'
vim.g.sonic_pi_check = 'version'
vim.g.sonic_pi_eval = ''
vim.g.sonic_pi_stop = 'stop'

vim.opt.showmatch = true                   -- show matching
vim.opt.mouse = 'v'                        -- middle-click paste with
vim.opt.hlsearch = true                    -- highlight search
vim.opt.ignorecase = true                  -- ignore case in search patterns
vim.opt.incsearch = true                   -- incremental search
vim.opt.tabstop = 2                        -- number of columns occupied by a tab
vim.opt.softtabstop = 2                    -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = true                   -- converts tabs to white space
vim.opt.shiftwidth = 2                     -- width for autoindents
vim.opt.autoindent = true                  -- indent a new line the same amount as the line just typed
vim.opt.number = true                      -- add line numbers
vim.opt.relativenumber = true              -- show relative numbers in the sidebar
vim.opt.wildmode = { 'longest', 'list' }   -- get bash-like tab completions
vim.opt.cursorline = true                  -- highlight current cursorline
vim.opt.wrap = false
vim.opt.undofile = true
vim.opt.showtabline = 2                    -- always show tabs
vim.opt.smartcase = true                   -- smart case
vim.opt.smartindent = true                 -- smart indenting
vim.opt.updatetime = 300                   -- faster completion (4000ms default)
vim.opt.scrolloff = 8                      -- start scrolling when within 8 lines near bottom/top
vim.opt.listchars = 'tab:> ,lead:·,trail:·' -- Show whitespace in :list
vim.opt.list = true                         -- Turn list mode on
vim.opt.conceallevel = 1

