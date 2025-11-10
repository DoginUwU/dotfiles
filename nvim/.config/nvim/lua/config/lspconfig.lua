local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
	html = {},
	cssls = {},
	tailwindcss = {},
	clangd = {},
	zls = {},

	tsserver = {},

	volar = {
		filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
	},
}

for lsp, config in pairs(servers) do
	local setup_config = vim.tbl_deep_extend("force", {
		capabilities = capabilities,
	}, config)

	vim.lsp.config(lsp, setup_config)
end
