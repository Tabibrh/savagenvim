require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "ltex", "texlab", "pyright"},
}

require("lspconfig").lua_ls.setup({})
require("lspconfig").ltex.setup({})
require("lspconfig").texlab.setup({})

require("lspconfig").pyright.setup({})

local lspconfig = require('lspconfig')

local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
	)
