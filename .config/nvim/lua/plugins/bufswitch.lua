return {
	dir = "~/repos/bufswitch/master",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("bufswitch").setup()
	end,
}
