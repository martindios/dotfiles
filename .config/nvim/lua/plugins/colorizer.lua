return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      -- Puedes configurar aquí los filetypes que quieres resaltar, o usar "*" para todos
      "*" 
    })
  end,
}

