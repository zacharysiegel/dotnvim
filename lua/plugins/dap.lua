return {
    {
        'mfussenegger/nvim-dap',
        opts = {},
        keys = {
            {
                "<leader>du",
                function()
                    require("dapui").toggle()
                end,
                silent = true,
            },
        },
        config = function(_, opts)
            require("dapui").setup(opts)
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        opts = {
            types = true,
        },
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        config = function(_, opts)
            require("nvim-dap-virtual-text").setup()
        end,
        lazy = false,
    },
}
