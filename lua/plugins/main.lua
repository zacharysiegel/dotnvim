return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'mbbill/undotree'
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
    },
    {
        'hrsh7th/cmp-nvim-lsp'
    },
    {
        'hrsh7th/nvim-cmp'
    },
    {
        'neovim/nvim-lspconfig',
    },
    {
        "williamboman/mason.nvim"
    },
    {
        "williamboman/mason-lspconfig.nvim"
    },
    {
        'ThePrimeagen/vim-be-good'
    },
    {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    },
    { -- Automatically add closing tags for HTML and JSX
        "windwp/nvim-ts-autotag",
        opts = {},
    },
    { -- Easily add comments to code using Vim motions (e.g. gc2j)
        'numToStr/Comment.nvim',
        opts = {},
    },
    {
        "L3MON4D3/LuaSnip",
        opts = {
            history = true,
            delete_check_events = "TextChanged",
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        opts = {
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = false, -- only works on Windows for hidden files/directories
                    never_show = {       -- remains hidden even if visible is toggled to true, this overrides always_show
                        ".DS_Store",
                        "thumbs.db",
                    },
                },
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                },
            },
        },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
        opts = {
            disable_filetype = { "TelescopePrompt", "spectre_panel" },
            disable_in_macro = true,        -- disable when recording or executing a macro
            disable_in_visualblock = false, -- disable when insert after visual block mode
            disable_in_replace_mode = true,
            ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
            enable_moveright = true,
            enable_afterquote = true,         -- add bracket pairs after quote
            enable_check_bracket_line = true, --- check bracket in same line
            enable_bracket_in_quote = true,   --
            enable_abbr = false,              -- trigger abbreviation
            break_undo = true,                -- switch for basic rule break undo sequence
            check_ts = false,
            map_cr = true,
            map_bs = true,   -- map the <BS> key
            map_c_h = false, -- Map the <C-h> key to delete a pair
            map_c_w = false, -- map <c-w> to delete a pair if possible
        },
    },
    {
        'numToStr/FTerm.nvim',
        opts = {
            border = 'single',
            dimensions = {
                height = 1,
                width = 1,
            },
        },
    },
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
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- Load luvit types when the `vim.uv` word is found
                { path = "luvit-meta/library", words = { "vim%.uv" } },
            },
        },
    },
    {
        "Bilal2453/luvit-meta",
        lazy = true,
    },
    {
        'theHamsta/nvim-dap-virtual-text',
        opts = {},
    },
    {
        "sindrets/diffview.nvim",
    },
    {
        "rust-lang/rust.vim"
    },
    {
        "kevinhwang91/nvim-bqf",
        event = { "BufRead", "BufNew" },
        config = function()
            require("bqf").setup({
                auto_enable = true,
                preview = {
                    win_height = 12,
                    win_vheight = 12,
                    delay_syntax = 80,
                    border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
                },
                func_map = {
                    vsplit = "",
                    ptogglemode = "z,",
                    stoggleup = "",
                },
                filter = {
                    fzf = {
                        action_for = { ["ctrl-s"] = "split" },
                        extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
                    },
                },
            })
        end,
    },
    {
        "ellisonleao/glow.nvim",
        config = true,
        cmd = "Glow",
    }
}
