require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = { 
			"help",
			"bash",
			"c", 
			"cpp",
			"css", 
			"csv", 
			"diff", 
			"dockerfile",
			"git_rebase",
			"gitignore",
			"go",
			"hcl",
			"html",
			"java",
			"javascript",
			"jq",
			"json",
			"kolin",
			"latex",
			"llvm",
			"lua",
			"make",
			"nginx",
			"objc",
			"python",
			"rust",
			"sql",
			"ssh_config",
			"swift",
			"tsv",
			"typescript",
			"verilog",
			"xml",
			"yaml",
			"zig",
		},

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
	ensure_installed = "all",
}

