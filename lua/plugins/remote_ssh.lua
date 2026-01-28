-- Remote SSH
return {
  'nosduco/remote-sshfs.nvim',
  name = 'remote-sshfs',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  opts = {
    -- Refer to the configuration section below
    -- or leave empty for defaults
  },
  config = function()
    local api = require 'remote-sshfs.api'
    vim.keymap.set('n', '<leader>rc', api.connect, { desc = '[C]onnect to SSH' })
    vim.keymap.set('n', '<leader>rd', api.disconnect, { desc = '[D]isconnect from SSH' })
    vim.keymap.set('n', '<leader>re', api.edit, { desc = '[E]dit SSH Connection' })

    -- Enable telescope
    pcall(require('telescope').load_extension, 'remote-sshfs')
  end,
}
