return {

    -- nvim-web-devicons
    {

        'nvim-tree/nvim-web-devicons',

        config = function()

            require('nvim-web-devicons').setup({})

        end

    },

    -- Lightweight status line
    {

        'nvim-lualine/lualine.nvim',

        requires = {'nvim-tree/nvim-web-devicons', opt = true},

        options = {theme = 'gruvbox-material'},

        config = function()

            -- Can edit the config from here, if wanted
            require('lualine').setup({})

        end

    },


}
