return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = { "html", "cssls", "tailwindcss", "clangd" },
				automatic_installation = true,
			})
		end,
		dependencies = { "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" },
	},
}
