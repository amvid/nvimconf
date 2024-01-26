return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.project/nvim-spectre" },
  { import = "astrocommunity.editing-support/todo-comments-nvim" },
  { import = "astrocommunity.git/git-blame-nvim" },
}
