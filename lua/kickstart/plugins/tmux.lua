return {
  {
    'aserowy/tmux.nvim',
    config = function()
      local tmux = require 'tmux'

      tmux.setup()
    end,
  },
  {
    'vimpostor/vim-tpipeline',
    config = function()
      -- Disable the statusline when entering vim
      vim.g.tpipline_autoembed = 1
      -- Restore the previous statusline after quitting vim
      vim.g.tpipeline_restore = 1
      -- Clear duplicate statusline when there is split windows
      vim.g.tpipline_clearstl = 1
      vim.o.fcs = 'stlnc:─,stl:─,vert:│'
      vim.opt.fillchars:append { eob = ' ' }
    end,
  },
}
