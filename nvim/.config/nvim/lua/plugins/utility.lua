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

    -- Trouble: show issues
    {

        'folke/trouble.nvim',

        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },

         opts = {
              modes = {
                lsp = {
                  win = { position = "right" },
                },
              },
            },

        cmd = "Trouble",

    },

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

    -- Tmux Vim navigation
    {

        'alexghergh/nvim-tmux-navigation',

        config = function()

            require('nvim-tmux-navigation').setup({})

            -- Vim - Tmux navigation
            vim.keymap.set('n', "<C-h>", '<Cmd>NvimTmuxNavigateLeft<CR>')
            vim.keymap.set('n', "<C-j>", '<Cmd>NvimTmuxNavigateDown<CR>')
            vim.keymap.set('n', "<C-k>", '<Cmd>NvimTmuxNavigateUp<CR>')
            vim.keymap.set('n', "<C-l>", '<Cmd>NvimTmuxNavigateRight<CR>')

        end

    }

}
