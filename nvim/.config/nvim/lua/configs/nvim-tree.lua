local function nvim_tree_attach(buff)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = buff, noremap = true, silent = true, nowait = true }
  end

  local function edit_or_open()
    local node = api.tree.get_node_under_cursor()

    if node.nodes ~= nil then
      -- expand or collapse folder
      api.node.open.edit()
    else
      -- open file
      api.node.open.edit()
      -- Close the tree if file was opened
      api.tree.close()
    end
  end

  api.config.mappings.default_on_attach(buff)

  vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts "Up")
  vim.keymap.set("n", "?", api.tree.toggle_help, opts "Help")
  vim.keymap.set("n", "l", edit_or_open, opts "Open")
  vim.keymap.set("n", "h", api.tree.change_root_to_parent, opts "Go back to parent folder")
  vim.keymap.set("n", "p", api.tree.change_root_to_node, opts "Set as root")
  -- vim.keymap.set("n", "h", api.tree.collapse_all, opts "Collapse All")
end

require("nvim-tree").setup {
  on_attach = nvim_tree_attach,
  update_focused_file = {
    enable = true,
    update_root = true,
    update_cwd = true,
    ignore_list = {},
  },
}
