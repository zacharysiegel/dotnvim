require("crates").setup {
    completion = {
        cmp = {
            enabled = true,
        },
        crates = {
            enabled = true,  -- disabled by default
            max_results = 8, -- The maximum number of search results to display
        },
    },
}
