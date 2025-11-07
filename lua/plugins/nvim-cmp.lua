return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  },
  config = function()
	  local cmp = require("cmp")

	  cmp.setup({
		  mapping = cmp.mapping.preset.insert({
			  ["<C-Space>"] = cmp.mapping.complete(),   -- trigger completion manually
			  ["<CR>"] = cmp.mapping.confirm({ select = true }),
		  }),

		  sources = {
			  { name = "nvim_lsp" },
			  { name = "buffer" }, -- words from current file (variable names etc.)
			  { name = "path" },
		  },
	  })
	  
	  local capabilities = vim.lsp.protocol.make_client_capabilities()
	  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

  end,
}
