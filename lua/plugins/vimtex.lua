-- vimtex
return {
  'lervag/vimtex',
  lazy = false, -- Load immediately (not lazy-loaded)
  -- version = "v2.15", -- Uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration
    vim.g.vimtex_view_method = 'zathura'
    -- Add other VimTeX settings here as needed, e.g:
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_view_zathura_use_synctex = 0
    vim.g.syntax_enabled = 1
    vim.g.tex_conceal = 'abdmg'
    vim.opt.conceallevel = 2
    vim.keymap.set('n', '<leader>sc', function()
      vim.opt.conceallevel = vim.opt.conceallevel:get() == 2 and 0 or 2
    end, { desc = 'Toggle VimTeX conceal' })
    vim.g.vimtex_quickfix_mode = 0
  end,
}
