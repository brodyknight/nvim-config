return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff" },
			markdown = { "prettierd" },
			xml = { "xmlformatter" },
		},
	},
}
