local active = "kanagawa-dragon"

local themes = {
  { "rebelot/kanagawa.nvim", name = "kanagawa" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "folke/tokyonight.nvim", name = "tokyonight" },
  { "rose-pine/neovim", name = "rose-pine" },
}

for _, theme in ipairs(themes) do
  if theme.name == active then
    theme.priority = 1000
    theme.config = function()
      vim.cmd.colorscheme(active)
    end
  else
    theme.lazy = true
  end
end

return themes
