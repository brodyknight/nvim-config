return {
  "windwp/nvim-ts-autotag",
  ft = { "html", "xml", "tsx", "jsx", "typescriptreact", "javascriptreact", "svelte" },
  opts = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = true,
        filetypes = {
          "html",
        },
        per_filetype = {
          ["html"] = {
            enable_close = false
          },
        },
      },
    })
  end
}
