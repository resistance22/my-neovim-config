return {
  "esmuellert/nvim-eslint",
  config = function()
    require("nvim-eslint").setup({
      settings = {
        format = true,                -- 🔥 THIS WAS MISSING EFFECTIVELY
        codeActionOnSave = {
          mode = "all",
        },
      },
    })
  end,
}
