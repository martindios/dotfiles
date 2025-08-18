return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"lua", "c", "markdown"},
            highlight = {
                enable = true,
                disable = {"latex"}
            },
            indent = {enable = true}
	})
    end,
}
