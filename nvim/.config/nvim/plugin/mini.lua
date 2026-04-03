vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })

require('mini.basics').setup()
require('mini.animate').setup()
require('mini.surround').setup()
require('mini.trailspace').setup()
require('mini.files').setup()

require('mini.comment').setup({

  mappings = {
    -- comment = '<leader>i',
    comment_line = '<leader>i',
    comment_visual = '<leader>i'
  }

})

vim.api.nvim_create_autocmd("User", {
  pattern = "MiniFilesBufferCreate",
  callback = function(args)
    local map = function(lhs, rhs)
      vim.keymap.set("n", lhs, rhs, { buffer = args.data.buf_id, silent = true })
    end

    -- Horizontal split
    map("<C-s>", function()
      local entry = MiniFiles.get_fs_entry()
      if entry and entry.fs_type == "file" then
        MiniFiles.close()
        vim.cmd.split(entry.path)
      end
    end)

    -- Vertical split
    map("<C-v>", function()
      local entry = MiniFiles.get_fs_entry()
      if entry and entry.fs_type == "file" then
        MiniFiles.close()
        vim.cmd.vsplit(entry.path)
      end
    end)
  end,
})

vim.pack.add({
  'https://github.com/folke/which-key.nvim.git'
})


local surround_mappings = {
  add            = 'sa',
  delete         = 'sd',
  find           = 'sf',
  find_left      = 'sF',
  highlight      = 'sh',
  replace        = 'sr',
  update_n_lines = 'sn',
}

require("mini.surround").setup({
  mappings = surround_mappings,
})

require('which-key').add({
  { surround_mappings.add,            desc = 'Add surrounding',            mode = { 'n', 'v' } },
  { surround_mappings.delete,         desc = 'Delete surrounding' },
  { surround_mappings.replace,        desc = 'Replace surrounding' },
  { surround_mappings.find,           desc = 'Find right surrounding' },
  { surround_mappings.find_left,      desc = 'Find left surrounding' },
  { surround_mappings.highlight,      desc = 'Highlight surrounding' },
  { surround_mappings.update_n_lines, desc = 'Update n lines' },
})
