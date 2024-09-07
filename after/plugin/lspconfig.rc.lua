local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end
local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
		vim.api.nvim_command [[autogroup END]]
	end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.tsserver.setup {
	on_attach = on_attach,
	filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
	cmd = { "typescript-language-server", "--stdio" }
}

lspconfig.lua_ls.setup {
	--on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },
			},

			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false
			},
		}
	}
}

lspconfig.clangd.setup {
	on_attach = on_attach,
	filetypes = { "c", "cpp" },
	cmd = { "clangd" }
}

lspconfig.pyright.setup {
	filetypes = { "python" },
	python = {
		analysis = {
			useLibraryCodeForTypes = true,
			diagnosticSeverityOverrides = {
				areportGeneralTypeIssues = "none",
				reportOptionalMemberAccess = "none",
				reportOptionalSubscript = "none",
				reportPrivateImportUsage = "none",
			},
		},
	},
	cmd = { "pyright-langserver", "--stdio" },
}

lspconfig.emmet_language_server.setup{
	cmd = { "emmet-language-server", "--stdio" },
	filetypes = { "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "typescriptreact", "htmlangular" },
	single_file_support = true,
}

lspconfig.html.setup{
	cmd = { "vscode-html-language-server", "--stdio" },
	filetypes = { "html", "templ" },
	init_options = {
	{
  		configurationSection = { "html", "css", "javascript" },
  		embeddedLanguages = {
    		css = true,
			javascript = true
  		},
  		provideFormatter = true
		}
	}
}

lspconfig.cssls.setup{}
