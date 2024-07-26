return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
		{ "<leader>f?", desc = "-> grep" },
	},
	config = function()
		local wk = require("which-key")
		wk.add({ "<leader>fg",group = "Grep", desc = "live grep" })
		wk.add({ "<leader>gf", group = "Format", desc = "auto format" })
	  end,
}
