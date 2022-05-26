local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   local servers = { "cssls", "dartls", "dockerls", "dotls", "emmet_ls", "eslint", "grammarly", "graphql", "html", "jsonls", "prismals", "pyright", "stylelint_lsp", "sumneko_lua", "svelte", "tailwindcss", "tsserver", "vimls", "vuels", "yamlls" }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
end

return M
