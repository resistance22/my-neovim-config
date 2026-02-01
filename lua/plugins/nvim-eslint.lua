return {
  'esmuellert/nvim-eslint',
  config = function()
    require('nvim-eslint').setup({
      format = true,
      codeActionOnSave = {
        ["source.fixAll"] = "always",  -- Apply all fixable issues on save
      }
    })
  end,
}
