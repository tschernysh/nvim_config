local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')


local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.cmd([[
      augroup Format
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
      augroup END
    ]])
  end
end

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local capabilities1 = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


nvim_lsp.solidity.setup {
  on_attach = on_attach,
  cmd = { 'nomicfoundation-solidity-language-server', '--stdio' },
  filetypes = { 'solidity' },
  root_dir = require("lspconfig.util").find_git_ancestor,
  single_file_support = true,
}
nvim_lsp.html.setup {
  cmd = { "html-languageserver", "--stdio" },
  on_attach = on_attach,
  capabilities = capabilities,
}
nvim_lsp.cssls.setup {
  cmd = { "css-languageserver", "--stdio" },
  on_attach = on_attach,
  capabilities = capabilities,
}
nvim_lsp.jsonls.setup {
  cmd = { "vscode-json-languageserver", "--stdio" },
  on_attach = on_attach,
  capabilities = capabilities,
}

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascriptreact", "javascript.jsx", "javascript" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      }
    }
  }
}
