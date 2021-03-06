local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    return
end

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            underline = true,
            virtual_text = {
                spacing = 3,
                prefix = ' '
            }
        })

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
  local opts = {capabilities = capabilities}
  
  server:setup(opts)

end)



require "plugins.configs.lsp.treesitter"
require "plugins.configs.lsp.lspsaga"
require "plugins.configs.lsp.lspkind"
require "plugins.configs.lsp.aerial"
require "plugins.configs.lsp.null-ls"
