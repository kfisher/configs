-- Copyright 2025 Kevin Fisher. All rights reserved.
-- SPDX-License-Identifier: BSD-3-Clause

return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable("rust_analyzer")
    vim.lsp.config("rust_analyzer", {
      on_attach = function(client, bufnr)
        -- vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
        vim.lsp.completion.enable(true, client.id, bufnr, {
        })
      end
    })
    vim.api.nvim_create_user_command('ToggleInlays', function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({0}),{0}) 
    end, { desc = 'Run my custom function' })
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = ev.buf, desc = "LSP Hover" })
        vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = ev.buf, desc = "LSP Rename" })
        vim.keymap.set({ 'n', 'v' }, '<leader>.', vim.lsp.buf.code_action, { buffer = ev.buf, desc = "LSP Code Action" })
        vim.keymap.set('n', '<leader>R', vim.lsp.buf.references, { buffer = ev.bug, desc = "LSP References" })
        vim.keymap.set('i', '<c-space>', function()
          vim.lsp.completion.get()
        end, { desc = "LSP Completion" })
      end,
    })
  end
}
