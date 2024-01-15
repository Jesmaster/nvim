return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "jay-babu/mason-nvim-dap.nvim",
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")

    require("mason-nvim-dap").setup({
      ensure_installed = { "php" },

      handlers = {
        function(config)
          require("mason-nvim-dap").default_setup(config)
        end,
        php = function(config)
          config.configurations = {
            {
              type = "php",
              request = "launch",
              name = "Listen for XDebug",
              port = 9003,
              log = true,
              pathMappings = {
                ["/var/www/html/"] = vim.fn.getcwd() .. "/",
              },
              hostname = "0.0.0.0",
            },
          }

          require("mason-nvim-dap").default_setup(config) -- don't forget this!
        end,
      },
    })

    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.disconnect.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
    vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "Debugger Continue" })
    vim.keymap.set("n", "<Leader>dso", dap.step_over, { desc = "Debugger Step Over" })
    vim.keymap.set("n", "<Leader>dsi", dap.step_into, { desc = "Debugger Step Into" })
  end,
}
