-- Session manager
return {
  'Shatur/neovim-session-manager',
  lazy = false,
  opts = {},
  config = function(_, opts)
    -- Setup session manager with opts
    local session_manager = require 'session_manager'
    session_manager.setup(opts)

    -- Auto-save session
    vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
      callback = function()
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          -- Don't save while there's any 'nofile' buffer open.
          if vim.api.nvim_get_option_value('buftype', { buf = buf }) == 'nofile' then
            return
          end
        end
        session_manager.save_current_session()
      end,
    })
  end,
}
