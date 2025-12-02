vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ce", function()
  local d = vim.diagnostic.get_next()
  if d then
    vim.fn.setreg("+", d.message)  -- copy to system clipboard
    print("Copied diagnostic: " .. d.message)
  end
end, { desc = "Copy LSP diagnostic" })

vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format({ async = true })
end, { buffer = bufnr, desc = "Format with gopls" })


vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<CR>", {
	noremap = true,
	silent = true,
	desc = "Global Search (live grep)"
})

vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr })
