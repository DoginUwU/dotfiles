local function nvim_tree_attach(buff)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = buff, noremap = true, silent = true, nowait = true }
	end

	local function edit_or_open()
		local node = api.tree.get_node_under_cursor()

		if node.nodes ~= nil then
			api.node.open.edit()
		else
			api.node.open.edit()
			api.tree.close()
		end
	end

	api.config.mappings.default_on_attach(buff)

	vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "l", edit_or_open, opts("Open"))
end

return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			on_attach = nvim_tree_attach,
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = false,
				update_cwd = false,
				ignore_list = {},
			},
		})
	end,
}
