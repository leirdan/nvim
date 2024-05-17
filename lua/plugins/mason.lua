return {
	{
		"williamboman/mason.nvim",
    lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
    lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "clangd", "jdtls", "ltex", "tailwindcss", "tsserver", "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
    lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({ capabilites = capabilities })
			lspconfig.jdtls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.ltex.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			vim.keymap.set("n", "<C-h>", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<C-c>", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<C-d>", vim.lsp.buf.definition, {})
		end,
	},
}
