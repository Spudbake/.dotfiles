return{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config=function()
  vim.keymap.set('n','<C-n>',':Neotree filesystem reveal left<CR>')
  vim.keymap.set('n','\\',':Neotree filesystem toggle<CR>')
  end

}
