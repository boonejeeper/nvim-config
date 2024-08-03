return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
			vim.keymap.set("n", "<leader>m", ":Mason<CR>", {})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({})

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

      lspconfig.rust_analyzer.setup {
        capabilities = capabilities,
        on_attach = on_attach
      }
      --lspconfig.rust_analyzer.setup {
        --settings = {
          --['rust-analyzer'] = {
            --workspace = {
              --symbol = {
                --search = {
                  --kind = "all_symbols"
                --}
              --}
            --}
          --},
        --},
      --}


			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
