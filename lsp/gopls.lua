return {
  cmd = { "gopls" },
  filetypes = { "go", "gomod" },
  root_dir = vim.fs.root(0, { "go.work", "go.mod", ".git" }),

  settings = {
    gopls = {
      gofumpt = true,
    },
  },

}
