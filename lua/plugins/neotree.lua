return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    -- NEOTREE CONFIG
    vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left toggle<CR>')
    require('neo-tree').setup({
      event_handlers = {
        {
          event = 'file_opened',
          handler = function(file_path)
            -- auto close
            -- vimc.cmd("Neotree close")
            -- OR
            require('neo-tree.command').execute({ action = 'close' })
          end
        },
      }
    })
  end
}
