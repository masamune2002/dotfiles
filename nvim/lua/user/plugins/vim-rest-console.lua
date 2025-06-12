local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

vim.g.vrc_set_default_mapping = 0
vim.g.vrc_response_default_content_type = 'application/json'
vim.g.vrc_output_buffer_name = '_OUTPUT.json'
vim.g.vrc_auto_format_response_patterns = {
  json = 'jq'
}

keymap("n", "<leader>xr", ":call VrcQuery()<CR>", opts)
