local function re_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)
  -- nvim-tree-api.tree.open()
  -- your removals and mappings go here
  vim.keymap.set("n", "<leader>e", api.tree.toggle, opts("Toggle Tree")) -- "NvimTreeToggle<CR>"
  vim.keymap.set("n", "\\", api.tree.toggle, opts("Toggle Tree"))
end

return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			view = {
				width = 30,
			},
			filters = {
				dotfiles = true,
			},
      on_attach = re_on_attach,
		})
	end,

	--vim.keymap.set("n", "<leader>fto", "NvimTreeToggle<CR>", { silent = true, desc = "Open nvim-tree" }),
}
