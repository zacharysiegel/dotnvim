-- Function to set wrap settings
local function set_wrap_settings()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.list = false
    vim.opt_local.textwidth = 0
    vim.opt_local.wrapmargin = 0
end

-- Set for markdown and text files
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "markdown", "text" },
    callback = set_wrap_settings
})

-- Set for buffers with no filetype (including the default buffer)
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*",
    callback = function()
        if vim.bo.filetype == "" then
            set_wrap_settings()
        end
    end
})
