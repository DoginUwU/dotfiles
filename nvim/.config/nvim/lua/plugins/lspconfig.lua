return {
	"neovim/nvim-lspconfig",
	config = function()
		require("config.lspconfig")
		require("config.cmp")
	end,
	dependencies = { "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp", "saadparwaiz1/cmp_luasnip", "L3MON4D3/LuaSnip" },
}
