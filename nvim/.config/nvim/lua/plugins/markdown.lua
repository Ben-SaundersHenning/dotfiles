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
        -- keys = {
        --
        --     { '<leader>c', '<cmd>PasteImage<cr>', desc = 'Paste clipboard image' },
        --
        -- },
    },

}
