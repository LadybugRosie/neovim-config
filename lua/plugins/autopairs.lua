-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  -- Optional dependency
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    require('nvim-autopairs').setup {}

    -- Deprecated! Only needed with nvim-cmp
    -- If you want to automatically add `(` after selecting a function or method
    -- local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
    -- local cmp = require 'cmp'
    -- cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

    -- Custom auto-pairing rules
    local Rule = require 'nvim-autopairs.rule'
    local npairs = require 'nvim-autopairs'

    -- LaTeX
    npairs.add_rule(Rule('\\[', '\\]', 'tex'))
    npairs.add_rule(Rule('$', '$', 'tex'))
  end,
}
