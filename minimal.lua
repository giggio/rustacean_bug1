vim.env.LAZY_STDPATH = '.repro'
load(vim.fn.system('cat ./bootstrap.lua'))()
-- load(vim.fn.system('curl -s https://raw.githubusercontent.com/folke/lazy.nvim/main/bootstrap.lua'))()

require('lazy.minit').repro {
  spec = {
    {
      'mrcjkb/rustaceanvim',
      version = '^6',
      init = function()
        -- Configure rustaceanvim here
        vim.g.rustaceanvim = {
          tools = {
            -- enable_nextest = false,
          },
        }
      end,
      lazy = false,
    },
    -- {
    --   "nvim-neotest/neotest",
    --   dependencies = {
    --     "nvim-neotest/nvim-nio",
    --     "nvim-lua/plenary.nvim",
    --     "antoinemadec/FixCursorHold.nvim",
    --     "nvim-treesitter/nvim-treesitter"
    --   },
    --   config = function()
    --     require('neotest').setup {
    --       adapters = {
    --         require('rustaceanvim.neotest')
    --       }
    --     }
    --   end,
    -- },
  },
}
