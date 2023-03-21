return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "ggandor/leap.nvim",
    as = "leap",
    event = "BufRead",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
}
