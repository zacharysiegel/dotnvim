local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'crates' },
    },

    mapping = cmp.mapping.preset.insert({
        -- Navigate between completion items
        ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
        ['<C-n>'] = cmp.mapping.select_next_item({ behavior = 'select' }),

        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(), -- Navigate between completion items
    }),

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
})
