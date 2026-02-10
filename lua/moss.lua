local hl = vim.api.nvim_set_hl

local colors

local M = {}

M.hl_base = function()
	-- Common
	hl(0, "Normal", { fg = colors.gray, bg = colors.transparent })
	hl(0, "Comment", { fg = colors.comment, bg = colors.transparent })

	hl(0, "String", { fg = colors.string })
	hl(0, "Character", { fg = colors.string })

	hl(0, "Constant", { fg = colors.constant })
	hl(0, "Special", { fg = colors.gray })
	hl(0, "Directory", { fg = colors.gray })

	hl(0, "Function", { fg = colors.keywords_and_operators })

	hl(0, "Operator", { fg = colors.keywords_and_operators })
	hl(0, "Keyword", { fg = colors.keywords_and_operators })
	hl(0, "Exception", { fg = colors.keywords_and_operators })
	hl(0, "Conditional", { fg = colors.keywords_and_operators })
	hl(0, "Label", { fg = colors.keywords_and_operators })
	hl(0, "Repeat", { fg = colors.keywords_and_operators })
	hl(0, "Statement", { fg = colors.keywords_and_operators })
	hl(0, "Bracket", { fg = colors.ignore })
	hl(0, "PreProc", { fg = colors.gray })

	hl(0, "CursorLine", { bg = colors.cursorline })

	hl(0, "Type", { fg = colors.gray })

	hl(0, "Visual", { bg = colors.visual })
	hl(0, "Indent", { fg = colors.comment })
	hl(0, "Identifier", { fg = colors.gray })
	hl(0, "MoreMsg", { fg = colors.gray })
end

M.hl_langs = function()
	-- Custom
	hl(0, "@interpolation", { fg = colors.gray })

	-- Treesitter Functions
	hl(0, "@function.call", { fg = colors.gray })
	hl(0, "@function.method.call", { fg = colors.gray })
	hl(0, "@function.macro", { fg = colors.gray })
	hl(0, "@constructor", {})

	-- Treesitter brackets
	hl(0, "@punctuation.bracket", { link = "Bracket", fg = colors.ignore })
	hl(0, "@punctuation.delimiter", { link = "Bracket", fg = colors.ignore })
	hl(0, "@punctuation.special", { link = "Bracket", fg = colors.ignore })

	-- Treesitter variables
	hl(0, "@variable", { fg = colors.gray })
	hl(0, "@variable.parameter", { fg = colors.gray })
	hl(0, "@variable.builtin", { fg = colors.gray })
	hl(0, "@variable.member", { fg = colors.gray })

	-- Treesitter modules
	hl(0, "@module", { fg = colors.gray })
	hl(0, "@module.builtin", { fg = colors.gray })
	hl(0, "@module.definition", { link = "Type" })

	-- Treesitter const
	hl(0, "@constant", { fg = colors.gray })
	hl(0, "@constant.builtin", { fg = colors.gray })

	-- Treesitter class
	hl(0, "@type", { fg = colors.gray })
	hl(0, "@type.definition", { link = "Type" })

	-- Treesitter string
	hl(0, "@string.escape", { link = "String" })

	-- Lua specific
	hl(0, "@variable.lua", { fg = colors.gray })
	hl(0, "@property.lua", { fg = colors.gray })
	hl(0, "@function.lua", { fg = colors.gray })
	hl(0, "@constructor.lua", { link = "Bracket" })
	hl(0, "luaTable", { link = "Bracket" })
	hl(0, "luaParen", { link = "Bracket" })
	hl(0, "luaFunc", { link = "Function" })
	hl(0, "@keyword.return.lua", { fg = colors.ignore })
	hl(0, "@keyword.conditional.lua", { fg = colors.ignore })
	hl(0, "@keyword.function.vim", { fg = colors.ignore })
	hl(0, "@keyword.function.lua", { fg = colors.ignore })
	hl(0, "@keyword.lua", { fg = colors.ignore })
	hl(0, "@operator.lua", { fg = colors.gray })

	-- Python specific
	hl(0, "pythonBuiltin", { fg = colors.gray })
	hl(0, "@attribute.python", {})
	hl(0, "@NonePy.python", { link = "Constant" })
	hl(0, "@assertpy", { link = "Operator" })
	hl(0, "@boolean", { fg = colors.keywords_and_operators })
	hl(0, "pythonFunction", { fg = colors.gray })

	-- Rust specific
	hl(0, "@keyword.modifier.rust", { fg = colors.gray })
	hl(0, "@attribute.rust", { fg = colors.gray })
	hl(0, "@punctuation.special.rust", { link = "Operator" })

	-- Bash specific
	hl(0, "@variable.parameter.bash", { link = "String" })

	-- Dockerfile specific
	hl(0, "@property.dockerfile", {})

	-- Yaml specific
	hl(0, "@property.yaml", { fg = colors.gray })
	hl(0, "@label.yaml", { fg = colors.gray })
	hl(0, "@property.dockerfile", {})

	-- Elixir specific
	hl(0, "@impl.keyword.elixir", { link = "Operator" })
	hl(0, "@keyword.do.elixir", { link = "Operator" })
	hl(0, "@dot.elixir", { fg = colors.gray })
	hl(0, "@constant.builtin.elixir", { link = "Constant" })
	hl(0, "@string.special.elixir", { fg = colors.gray })

	-- JSON specific
	hl(0, "@property.json", { fg = colors.gray })

	-- TS specific
	hl(0, "@operator.decorator.typescript", { link = "Operator" })
	hl(0, "@constructor.definition.typescript", { link = "Keyword" })

	-- JS specific
	hl(0, "@tag.delimiter.javascript", { link = "Operator" })
	hl(0, "@tag.attribute.javascript", { link = "Function" })
	hl(0, "@constructor.definition.javascript", { link = "Keyword" })
	hl(0, "@lsp.type.property.javascript", { fg = colors.gray })

	-- HTML specific
	hl(0, "@tag.attribute.html", { link = "Function" })
	hl(0, "@tag.delimiter.html", { link = "Operator" })
	hl(0, "@markup.heading.html", { fg = colors.gray })
	hl(0, "@markup.heading.1.html", { fg = colors.gray })
	hl(0, "@markup.heading.2.html", { fg = colors.gray })
	hl(0, "@markup.heading.3.html", { fg = colors.gray })
	hl(0, "@markup.heading.4.html", { fg = colors.gray })
	hl(0, "@markup.heading.5.html", { fg = colors.gray })
	hl(0, "@markup.link.label.html", { fg = colors.gray })
	hl(0, "htmlTag", { fg = colors.ignore })
	hl(0, "htmlTagN", { fg = colors.ignore })

	-- CSS specific
	hl(0, "@property.css", { fg = colors.gray })
	hl(0, "@function.css", { fg = colors.gray })

	hl(0, "@attribute.css", { link = "Function" })
	hl(0, "@tag.attribute.css", { link = "Function" })
	hl(0, "@constant.css", { link = "Function" })
	hl(0, "@tag.css", { link = "Type" })
	hl(0, "@color.css", { link = "Constant" })
	hl(0, "@unit.css", { link = "Keyword" })

	hl(0, "@type.css", { link = "Function" })
	hl(0, "@type.delimiter.css", { link = "Function" })
	hl(0, "@punctuation.delimiter.css", {})
	hl(0, "cssDefinition", { fg = colors.gray })
	hl(0, "cssClassName", { fg = colors.keywords_and_operators })
	hl(0, "cssClassNameDot", { fg = colors.keywords_and_operators })
	hl(0, "cssBraces", { fg = colors.gray })
	hl(0, "@tag.css", { fg = colors.gray })

	-- Java specific
	hl(0, "@constructor.java", { link = "Function" })
	hl(0, "@operator.access.java", { fg = colors.gray })
	hl(0, "@operator.decorator.java", { fg = colors.gray })

	-- C# specific
	hl(0, "@module.c_sharp", { link = "Type" })
	hl(0, "@property.c_sharp", { fg = colors.gray })
	hl(0, "@constructor.c_sharp", { link = "Function" })
	hl(0, "@constant.builtin.c_sharp", { link = "Constant" })
	hl(0, "@function.question", { fg = colors.gray })

	-- C++ specific
	hl(0, "@property.cpp", { fg = colors.gray })
	hl(0, "@operator.dot.cpp", { fg = colors.gray })

	-- C specific
	hl(0, "@property.c", { fg = colors.gray })
	hl(0, "@label.c", { fg = colors.gray })
	hl(0, "@operator.dot.c", { fg = colors.gray })
	hl(0, "cType", { fg = colors.gray })
	hl(0, "@lsp.type.function.c", { fg = colors.gray })
	hl(0, "@lsp.type.property.c", { fg = colors.gray })
	hl(0, "cTypedef", { fg = colors.gray })
	hl(0, "cStructure", { fg = colors.keywords_and_operators })
	hl(0, "cConstant", { fg = colors.constant })

	-- TOML specific
	hl(0, "@property.toml", { fg = colors.gray })
	hl(0, "@string.special.toml", { link = "String" })

	-- Ruby specific
	hl(0, "@function.builtin.ruby", { link = "Keyword" })
	hl(0, "@string.special.symbol.ruby", { link = "String" })

	-- PHP specific
	hl(0, "@property.php", { fg = colors.gray })

	-- Go specific
	hl(0, "@property.go", { fg = colors.gray })
	hl(0, "@keyword.chan", { fg = colors.keywords_and_operators })
	hl(0, "goType", { fg = colors.gray })
	hl(0, "goBuiltins", { fg = colors.gray })
	hl(0, "goSignedInts", { fg = colors.gray })
	hl(0, "goUnsignedInts", { fg = colors.gray })
	hl(0, "goFloats", { fg = colors.gray })
	hl(0, "goDeclaration", { fg = colors.ignore })
	hl(0, "goImport", { fg = colors.ignore })
	hl(0, "goPackage", { fg = colors.ignore })
	hl(0, "goVar", { fg = colors.ignore })

	-- Markdown specific
	vim.api.nvim_set_hl(0, "MyMarkdownLinkText", {
		fg = colors.gray,
		underline = false,
	})
	vim.cmd("hi! link markdownLinkText MyMarkdownLinkText")
	hl(0, "markdownUrl", { fg = colors.ignore })

	-- Dart specific
	hl(0, "@property.dart", { fg = colors.gray })

	-- Solidity specific
	hl(0, "@constructor.solidity", { link = "Keyword" })

	-- SCSS specific
	hl(0, "@property.scss", { fg = colors.gray })
	hl(0, "@function.scss", { fg = colors.gray })
	hl(0, "@function.definition.scss", { link = "Function" })
	hl(0, "@string.scss", { fg = colors.gray })

	hl(0, "@attribute.scss", { link = "Function" })
	hl(0, "@tag.attribute.scss", { link = "Function" })
	hl(0, "@constant.scss", { link = "Function" })
	hl(0, "@tag.scss", { link = "Type" })
	hl(0, "@color.scss", { link = "Constant" })
	hl(0, "@unit.scss", { link = "Keyword" })

	hl(0, "@type.scss", { link = "Function" })
	hl(0, "@type.delimiter.scss", { link = "Function" })
	hl(0, "@punctuation.delimiter.scss", {})

	-- Bash specific
	hl(0, "@variable.parameter.bash", { fg = colors.gray })
	hl(0, "@keyword.import.bash", { fg = colors.gray })

	-- Erlang specific
	hl(0, "@function.erlang", { fg = colors.gray })
	hl(0, "@function.definition.erlang", { link = "Function" })
	hl(0, "@operator.colon.erlang", { fg = colors.gray })

	-- Clojure specific
	hl(0, "@function.method.clojure", { fg = colors.gray })

	-- Haskell specific
	hl(0, "@operator.gray.haskell", { fg = colors.gray })
	hl(0, "@keyword.directive", { fg = colors.gray })
end

M.hl_ui_overrides = function()
	hl(0, "Pmenu", { bg = nil, fg = colors.gray })
	hl(0, "PmenuSel", { bg = colors.visual, fg = nil })
	hl(0, "PmenuSbar", { bg = nil })
	hl(0, "PmenuThumb", { bg = nil })

	hl(0, "CmpPmenu", { bg = nil, fg = colors.gray })
	hl(0, "CmpSel", { bg = colors.visual, fg = nil })
	hl(0, "CmpDoc", { bg = nil, fg = nil })
	hl(0, "CmpDocBorder", { bg = nil, fg = nil })

	hl(0, "CmpBorder", { bg = nil })
	hl(0, "CmpDocBorder", { bg = nil })
	hl(0, "CmpItemAbbr", { bg = nil })
	hl(0, "CmpItemAbbrMatch", { bg = nil })
	hl(0, "CmpItemKind", { bg = nil })

	hl(0, "TelescopeBorder", { bg = nil })
	hl(0, "TelescopePromptBorder", { bg = nil })
	hl(0, "TelescopeResultsBorder", { bg = nil })

	hl(0, "NormalFloat", { bg = nil })
	hl(0, "FloatBorder", { bg = nil, fg = nil })

	hl(0, "Folded", { bg = nil })

	hl(0, "TabLine", { bg = nil })
	hl(0, "TabLineFill", { bg = nil })
	hl(0, "TabLineSel", { bg = nil })
end

local highlight = function()
	M.hl_base()
	M.hl_langs()
	M.hl_ui_overrides()
end

local colorscheme = function()
	vim.api.nvim_command("hi clear")
	vim.o.termguicolors = true
	vim.g.colors_name = "moss"

	colors = require("colors").get()
	highlight()
end

local function load_colorscheme(bg)
	vim.api.nvim_command("hi clear")
	vim.o.termguicolors = true
	vim.g.colors_name = "moss"

	colors = require("colors").get(bg)
	highlight()
end

vim.api.nvim_create_user_command("MossToggle", function()
	local theme
	if vim.o.background == "dark" then
		vim.o.background = "light"
		theme = "light"
	else
		vim.o.background = "dark"
		theme = "dark"
	end
	vim.cmd("colorscheme moss")
	vim.fn.writefile({ theme }, vim.g.last_theme)
end, {})

vim.api.nvim_create_user_command("MossLight", function()
	vim.o.background = "light"
	load_colorscheme("light")
	vim.fn.writefile({ "light" }, vim.g.last_theme)
end, {})

vim.api.nvim_create_user_command("MossDark", function()
	vim.o.background = "dark"
	load_colorscheme("dark")
	vim.fn.writefile({ "dark" }, vim.g.last_theme)
end, {})

return { colorscheme = colorscheme }
