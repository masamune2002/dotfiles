-- Define a Lua version of the s:list_commits function
local function list_commits()
  local git_base = 'git -C ~/Code/Twist_and_Stack'
  local output = vim.fn.systemlist(git_base .. ' log --oneline | head -n10')
  local git_cmd = 'G' .. git_base:sub(2) -- Mimics 'G' . git[1:] from Vimscript

  -- Convert each line to the { line = ..., cmd = ... } format
  local commits = {}
  for _, line in ipairs(output) do
    local sha = line:match('^%x+')
    local desc = line:match('%s+(.*)')
    if sha and desc then
      table.insert(commits, {
        line = desc,
        cmd = git_cmd .. ' show ' .. sha,
      })
    end
  end

  return commits
end

vim.g.startify_lists = {
  { type = 'sessions',  header = { '   Sessions' } },
  { type = 'bookmarks', header = { '   Bookmarks' } },
  { type = 'files',     header = { '   Last Opened' } },
  { type = list_commits, header = { '   Twist and Stack' } },
  { type = 'dir',       header = { '   In this directory... ' .. vim.fn.getcwd() } },
  { type = 'commands',  header = { '   Commands' } },
}

vim.g.startify_bookmarks = {
  { w = '~/Code/dotfiles/nvim' },
  { e = '~/Code/dotfiles/fish' },
  { r = '~/Code/Twist_and_Stack' },
  { t = '~/Documents/Notes' }
}

vim.g.startify_commands = {
  ':help reference',
  ':ObsidianNew  New Note'
}

vim.g.startify_files_number = 5

vim.g.startify_change_to_dir = 1
vim.g.startify_session_before_save = { 'silent! tabdo NERDTreeClose' }
vim.g.startify_custom_header = {
  '            __                   ',
  '    __  __ /\\_\\    ___ ___     ',
  '   /\\ \\/\\ \\\\/\\ \\ /\' __` __`\\',
  '   \\ \\ \\_/ |\\ \\ \\/\\ \\/\\ \\/\\ \\',
  '    \\ \\___/  \\ \\_\\ \\_\\ \\_\\ \\_\\',
  '     \\/__/    \\/_/\\/_/\\/_/\\/_/',
}


