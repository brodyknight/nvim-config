return {
	"nvim-tree/nvim-tree.lua",
  enabled = false,
	cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  event = "VeryLazy",
	opts = {
		disable_netrw = true,
		hijack_cursor = true,
    sync_root_with_cwd = true,
	},
}
