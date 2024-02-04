return {

    -- Preview markdown files in the browser.
    {
        'iamcco/markdown-preview.nvim',
        cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
        ft = { 'markdown' },
        build = function() vim.fn['mkdp#util#install']() end,
    },

    -- Paste images into markdown files.
    {

        'HakonHarnes/img-clip.nvim',

        event = 'BufEnter',

        opts = {

        },

        keys = {

            { '<leader>c', '<cmd>PasteImage<cr>', desc = 'Paste clipboard image' },

        },

    },

    -- VimTex: LaTex support in Vim.
    {

        'lervag/vimtex',

        ft = 'tex',

        lazy = false,

        config = function()
            vim.g.vimtex_view_method = 'skim'
            vim.g.vimtex_compiler_engine = 'lualatex'
            -- vim.g.maplocalleader = ','
        end,

    }

}
