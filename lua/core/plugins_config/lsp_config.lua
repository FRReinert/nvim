require("mason").setup()
require("lspsaga").setup({})
require("mason-lspconfig").setup()
local lsp_config = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspsaga').setup({
  code_action_icon = "💡",
  symbol_in_winbar = {
    in_custom = false,
    enable = true,
    separator = ' ',
    show_file = true,
    file_formatter = ""
  },
})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { silent= true })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { silent = true})
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { silent = true})
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', { silent = true })
vim.keymap.set({"n","v"}, "<leader>la", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", { silent = true })

lsp_config.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}

lsp_config.solargraph.setup {
  capabilities = capabilities,
}

lsp_config.pyright.setup {
  capabilities = capabilities,
}

