local todo_comments = require("todo-comments")

vim.keymap.set("n", "<leader>cxn", todo_comments.jump_next)
vim.keymap.set("n", "<leader>cxN", todo_comments.jump_prev)

-- NOTE: Any updates to these keywords should be mirrored in the plugin configuration
local FIX_keywords = {"fix", "FIX", "FIXME", "bug", "BUG", "FIXIT", "ISSUE"}
vim.keymap.set("n", "<leader>cfn", function() -- f(ix)
    todo_comments.jump_next({ keywords = FIX_keywords })
end)
vim.keymap.set("n", "<leader>cfN", function()
    todo_comments.jump_prev({ keywords = FIX_keywords })
end)
vim.keymap.set("n", "<leader>cbn", function() -- b(ug)
    todo_comments.jump_next({ keywords = FIX_keywords })
end)
vim.keymap.set("n", "<leader>cbN", function()
    todo_comments.jump_prev({ keywords = FIX_keywords })
end)

local TODO_keywords = {"todo", "TODO"}
vim.keymap.set("n", "<leader>ctn", function() -- t(odo)
    todo_comments.jump_next({ keywords = TODO_keywords })
end)
vim.keymap.set("n", "<leader>ctN", function()
    todo_comments.jump_prev({ keywords = TODO_keywords })
end)

local WARN_keywords = {"warn", "WARN", "WARNING", "XXX"}
vim.keymap.set("n", "<leader>cwn", function() -- w(arning)
    todo_comments.jump_next({ keywords = WARN_keywords })
end)
vim.keymap.set("n", "<leader>cwN", function()
    todo_comments.jump_prev({ keywords = WARN_keywords })
end)

local PERF_keywords = {"perf", "PERF", "OPTIM", "PERFORMANCE", "OPTIMIZE"}
vim.keymap.set("n", "<leader>cpn", function() -- p(erformance)
    todo_comments.jump_next({ keywords = PERF_keywords })
end)
vim.keymap.set("n", "<leader>cpN", function()
    todo_comments.jump_prev({ keywords = PERF_keywords })
end)

local NOTE_keywords = {"note", "NOTE", "info", "INFO"}
vim.keymap.set("n", "<leader>cnn", function() -- n(ote)
    todo_comments.jump_next({ keywords = NOTE_keywords })
end)
vim.keymap.set("n", "<leader>cnN", function()
    todo_comments.jump_prev({ keywords = NOTE_keywords })
end)
vim.keymap.set("n", "<leader>cin", function() -- i(nfo)
    todo_comments.jump_next({ keywords = NOTE_keywords })
end)
vim.keymap.set("n", "<leader>ciN", function()
    todo_comments.jump_prev({ keywords = NOTE_keywords })
end)

