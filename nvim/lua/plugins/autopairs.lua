-- lua/plugins/autopairs.lua

return {
  "windwp/nvim-autopairs",
  event = "InsertEnter", -- Carga el plugin al entrar en modo insert
  config = function()
    require("nvim-autopairs").setup {
      -- Puedes agregar aquí tus opciones de configuración
      disable_filetype = { "TelescopePrompt", "vim" },
    }
  end,
}

