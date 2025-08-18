return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "texlab", "pylsp", "marksman", "jdtls"}
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.bashls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.texlab.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.jdtls.setup({})

        end
    },
}

