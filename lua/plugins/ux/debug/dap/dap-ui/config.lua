local dap = require("dap")
local dapui = require 'dapui'

dapui.setup {
	icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
	controls = {
		icons = {
			pause = '⏸',
			play = '▶',
			step_into = '⏎',
			step_over = '⏭',
			step_out = '⏮',
			step_back = 'b',
			run_last = '▶▶',
			terminate = '⏹',
		},
	},
	force_buffers = true,
	layouts = { {
			elements = { {
					id = "scopes",
					size = 0.5
				}, {
					id = "breakpoints",
					size = 0.25
				}, {
					id = "stacks",
					size = 0.25
				}, 
				--[[ {
					id = "watches",
					size = 0.25
				}  ]]
			},
			position = "left",
			size = 40
		}, {
			elements = { 
				{
					id = "repl",
					size = 1
				}, 
				--[[ {
					id = "console",
					size = 0.2
				}  ]]
			},
			position = "bottom",
			size = 10
		} },
}
	
--[[ dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end ]]
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
