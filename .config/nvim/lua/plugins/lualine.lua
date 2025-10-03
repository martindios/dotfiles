return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = "nordic"
            },
            sections = {
                lualine_x = { "fileformat", "filetype" },
            },
        })
    end
}
