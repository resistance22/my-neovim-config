-- Enable LSP servers (if you're using the built-in default client loader)
vim.lsp.enable({"gopls", "lua_ls", "ts_ls"})

-- Auto-enable LSP completion when a server attaches
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method("textDocument/completion") then
      -- set proper completion options
      vim.opt.completeopt = { "menu", "menuone", "noinsert", "noselect", "fuzzy" }
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      vim.keymap.set("i", "<C-Space>", function() vim.lsp.completion.get() end)
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
  callback = function()
    vim.lsp.buf.code_action({
      apply = true,
      context = {
        only = { "source.fixAll.eslint" },
      },
    })
  end,
})

vim.diagnostic.config({
	virtual_lines = {
		current_line = true
	},
})

