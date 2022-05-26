local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {

   b.code_actions.eslint,
   b.code_actions.gitsigns,
   b.formatting.fixjson,
   b.formatting.prettier,
   b.completion.luasnip,
   b.completion.spell,
   b.diagnostics.write_good,
   b.diagnostics.eslint,
   b.diagnostics.tsc,

   -- Lua
   b.formatting.stylua,
   b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

local M = {}

M.setup = function()
   null_ls.setup {
      debug = true,
      sources = sources,

      -- format on save
      on_attach = function(client)
         if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
         end
      end,
   }
end

return M
