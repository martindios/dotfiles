return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- Aquí puedes agregar tus opciones personalizadas
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0',
  },
}

