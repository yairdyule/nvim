require'lspconfig'.jsonls.setup{
  commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
        end
      }
    },
    cmd = { "vscode-json-language-server", "--stdio" },
    filetypes = { "json" },
    init_options = {
      provideFormatter = true
    }
    -- root_dir = root_pattern(".git", vim.fn.getcwd())
}
require'lspconfig'.tsserver.setup{
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
      -- root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
}
