return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()
    require('mini.statusline').setup()

    local starter = require 'mini.starter'
    starter.setup {
      evaluate_single = true,
      items = {
        starter.sections.builtin_actions(),
        starter.sections.recent_files(10, false),
        starter.sections.recent_files(10, true),
        -- Use this if you set up 'mini.sessions'
        -- starter.sections.sessions(5, true)
      },
      content_hooks = {
        starter.gen_hook.adding_bullet(),
        starter.gen_hook.indexing('all', { 'Builtin actions' }),
        starter.gen_hook.padding(3, 2),
      },
    }

    require('mini.operators').setup()

    require('mini.files').setup {
      vim.keymap.set('n', '<leader>e', '<cmd>lua MiniFiles.open()<CR>'),
    }
  end,
}
