return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
	    update_focused_file = {
		    enable = true,
		    update_cwd = true,  -- optional: change cwd to the file's directory
	    },
    }
    local api = require("nvim-tree.api")
    vim.keymap.set("n", "<leader>e", function()
	    api.tree.toggle({ open = true, focus = true })
    end, { silent = true })

  end,
}
