return {

    -- Comment (easy commenting)
    {

        'numToStr/Comment.nvim',

        -- Mostly copied from the default config,
        -- with a few adjustments
        config = function()

            require('Comment').setup({

                ---Add a space b/w comment and the line
                padding = true,
                ---Whether the cursor should stay at its position
                sticky = true,
                ---Lines to be ignored while (un)comment ignore = nil,

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

                ---Enable keybindings
                ---NOTE: If given `false` then the plugin won't create any mappings
                mappings = {
                    ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
                    basic = true,
                    ---Extra mapping; `gco`, `gcO`, `gcA`
                    extra = false,
                },

            })

        end

    },

    -- Auto Session Management
    -- Default session file is named 'Session.vim',
    -- exists within the local directory
    -- {
    --
    --     'echasnovski/mini.sessions',
    --
    --     version = false,
    --
    --     config = function ()
    --
    --         require('mini.sessions').setup({})
    --
    --     end
    --
    -- },

    -- Tpope Auto Session management - in Vimscipt
    {

        'tpope/vim-obsession'

    },

    -- NerdTree file explorer
    {

        'nvim-tree/nvim-tree.lua',

        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },

        config = function ()

            require('nvim-tree').setup({})

        end

    },

    -- -- Trouble: show issues
    -- {
    --
    --     'folke/trouble.nvim',
    --
    --     dependencies = {
    --         'nvim-tree/nvim-web-devicons',
    --     },
    --
    --      opts = {
    --           modes = {
    --             lsp = {
    --               win = { position = "right" },
    --             },
    --           },
    --         },
    --
    --     cmd = "Trouble",
    --
    -- },

    -- -- FTerm: a floating terminal
    -- {
    --
    --     'numToStr/FTerm.nvim',
    --
    --     config = function ()
    --
    --         require('FTerm').setup({
    --
    --             vim.api.nvim_create_user_command('FTermToggle', require('FTerm').toggle, { bang = true })
    --
    --         })
    --
    --     end
    --
    -- },

    -- Autoclose HTML tags
    -- {
    --
    --     'windwp/nvim-ts-autotag',
    --
    --     config = function()
    --
    --         require('nvim-ts-autotag').setup({})
    --
    --     end
    --
    -- },

    -- -- Tmux Vim navigation
    -- {
    --
    --     'christoomey/vim-tmux-navigator',
    --
    --     keys = {
    --
    --     { '<C-w>\\', '<cmd>TmuxNavigatePrevious<cr>', desc = 'Go to the previous pane' },
    --
    --     { '<C-w>h', '<cmd>TmuxNavigateLeft<cr>', desc = 'Got to the left pane' },
    --
    --     { '<C-w>j', '<cmd>TmuxNavigateDown<cr>', desc = 'Got to the down pane' },
    --
    --     { '<C-w>k>', '<cmd>TmuxNavigateUp<cr>', desc = 'Got to the up pane' },
    --
    --     { '<C-w>l', '<cmd>TmuxNavigateRight<cr>', desc = 'Got to the right pane' },
    --
    --     },
    --
    -- }

}
