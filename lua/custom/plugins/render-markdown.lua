return {
  'MeanderingProgrammer/render-markdown.nvim',
  enabled = false,
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  config = function()
    require('render-markdown').setup {
      completions = { blink = { enabled = true } },
      indent = { enabled = true },
      pipe_table = { cell = 'trimmed' },
      bullet = { right_pad = 1 },
      code = {
        disable_background = true,
        style = 'normal',
        width = 'block',
        left_pad = 3,
        border = 'thin',
        language_border = '-',
        above = '-',
        below = '-',
      },
    }
  end,
}
