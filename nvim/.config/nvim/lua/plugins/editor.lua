return {

  {
    'numToStr/Comment.nvim',
    opts = {

      ---LHS of toggle mappings in NORMAL mode
      toggler = {
        ---Line-comment toggle keymap
        line = '<leader>i',
        ---Block-comment toggle keymap
        block = '<leader>u',
      },
      ---LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
        ---Line-comment keymap
        line = '<leader>i',
        ---Block-comment keymap
        block = '<leader>u',
      },
      ---LHS of extra mappings
      extra = {
        ---Add comment on the line above
        above = nil,
        ---Add comment on the line below
        below = nil,
        ---Add comment at the end of line
        eol = '<leader>n',
      },
      ---Enable keybindings
      ---NOTE: If given `false` then the plugin won't create any mappings
      mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
      },
    }
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opts = {} },
    opts = function()

      local function getWords()
        -- the third string here is the string for visual-block mode (^V)
        if vim.fn.mode() == "v" or vim.fn.mode() == "V" or vim.fn.mode() == "" then
          return "Selected: " .. vim.fn.wordcount().visual_words .. " words"
        else
          return vim.fn.wordcount().words .. " words"
        end
      end

      return {
        options = {
          theme = "jellybeans",
        },
        sections = {
          lualine_x = { getWords, "encoding", "fileformat", "filetype" },
        },
      }

    end,
    -- extensions = {'trouble'}
  },

  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },

  -- mini align (align text interactively)
  {

    "nvim-mini/mini.align",

    version = false,
    opts = {}

  },


}
