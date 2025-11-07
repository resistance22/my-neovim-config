return {
  cmd = { "gopls" },
  filetypes = { "go", "gomod" },
  root_dir = vim.fs.root(0, { "go.work", "go.mod", ".git" }),

  settings = {
    gopls = {
      gofumpt = true,
    },
  },

  -- This runs when the LSP attaches to the buffer
  on_attach = function(client, bufnr)
    -- Format on keybind <leader>f
    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, { buffer = bufnr, desc = "Format with gopls" })
  end,
  capabilities = capabilities,
}
