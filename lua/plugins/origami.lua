return {
	"chrisgrieser/nvim-origami",
	event = "VeryLazy",
	opts = {}, -- needed even when using default config

	-- recommended: disable vim's auto-folding
	init = function()

		vim.opt.fillchars = {
			foldopen = "<",
			foldclose= ">",
			foldsep = " ",
		}

		vim.opt.foldcolumn = "1"

		vim.opt.foldlevel = 99
		vim.opt.foldlevelstart = 99
		require("origami").setup{
			foldKeymaps = {
				setup = false, -- modifies `h`, `l`, and `$`
			},
		}


		vim.keymap.set("n", "<leader>[", function() require("origami").h() end)
		vim.keymap.set("n", "<leader>]", function() require("origami").l() end)
		vim.keymap.set("n", "<leader>$", function() require("origami").dollar() end)
	end,
}
