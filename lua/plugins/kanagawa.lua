return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			compile = true,  -- important
		})
		require("kanagawa").load("wave")
	end,
}
