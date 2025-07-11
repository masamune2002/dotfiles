require("obsidian").setup({
  workspaces = {
    {
      name = "Notes",
      path = "~/Documents/Notes",
    }
  },
  daily_notes = {
    -- Optional, if you keep daily notes in a separate directory.
    folder = "Daily Notes",
    -- Optional, if you want to change the date format for the ID of daily notes.
    date_format = "%Y-%m-%d",
    -- Optional, if you want to change the date format of the default alias of daily notes.
    alias_format = "%B %-d, %Y",
    -- Optional, default tags to add to each new daily note created.
    default_tags = { "daily-note" },
    -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
    template = nil
  },
})
