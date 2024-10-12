vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		source = true,
		severity = vim.diagnostic.severity.ERROR,
	},
	update_in_insert = false,
	severity_sort = true,
	float = {
		source = true,
	},
	underline = {
		severity = vim.diagnostic.severity.ERROR,
	},
})

local signs = { Error = " ", Warn = " ", Hint = "", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = "", linehl = "", numhl = "" })
end
