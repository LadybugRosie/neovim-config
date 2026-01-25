-- [[ Configure and install plugins ]]

require('lazy').setup({

  require 'plugins.colorscheme',

  require 'plugins.alpha',

  -- require 'plugins.session_manager',

  require 'plugins.mini',

  require 'plugins.treesitter',

  require 'plugins.guessindent',

  require 'plugins.neo_tree',

  require 'plugins.whichkey',

  require 'plugins.flash',

  require 'plugins.lsp',

  require 'plugins.autocompletion',

  require 'plugins.autoformat',

  require 'plugins.autopairs',

  require 'plugins.gitsigns',

  require 'plugins.todo_comments',

  require 'plugins.vimtex',

  -- require 'plugins.auto_session',

  require 'plugins.telescope',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
