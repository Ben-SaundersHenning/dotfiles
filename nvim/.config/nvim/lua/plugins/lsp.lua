return {

  ---------------------------------------------------------------------------
  -- Mason + multiple LSP servers (new Neovim API)
  ---------------------------------------------------------------------------
  {
    "williamboman/mason.nvim",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      ---------------------------------------------------------------------
      -- >>>>> EDIT THIS LIST to add or remove LSP servers <<<<<
      ---------------------------------------------------------------------
      local servers = {
                'lua_ls', -- Lua
                'clangd', -- C
                -- 'csharp_ls', -- C#
                -- 'pyright', -- Python
                'rust_analyzer', -- Rust
                'html', -- HTML
                'cssls', -- CSS
                -- 'quick_lint_js', -- Javscript
                'eslint', -- Typescript, Javascript
                'emmet_language_server', -- emmet
                -- 'svelte', -- svelte
                'vimls', -- vim
                -- 'fortls', -- fortran,
                -- 'matlab_ls', -- matlab_ls
                -- 'als', -- Ada
                'vue_ls', -- Vue
                'vtsls', -- Vue (?)
                'tinymist', -- Typst
                'jedi_language_server', -- Python,
                'bashls' -- Bash
      }
      ---------------------------------------------------------------------

      local blink_cmp = require("blink.cmp")
      local capabilities = blink_cmp.get_lsp_capabilities()

      -- Ensure these servers are installed
      require("mason-lspconfig").setup {
        ensure_installed = servers,
      }

      -- Global defaults for all servers
      vim.lsp.config("*", {
        capabilities = capabilities,
        on_attach = function(_, bufnr)
          -- Hover documentation
          vim.keymap.set("n", "K", vim.lsp.buf.hover,
            { buffer = bufnr, desc = "Hover Documentation" })
        end,
      })

      -- Enable every server in the list
      vim.lsp.enable(servers)
    end,
  },

}
