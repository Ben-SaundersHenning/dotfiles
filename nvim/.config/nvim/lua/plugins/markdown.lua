return {

    -- nvim-web-devicons
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- nvim-web-devicons
    {
        "HakonHarnes/img-clip.nvim",

        event = "BufEnter",
        opts = {
        },
        keys = {
        { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste clipboard image" },
        },
    },
}
