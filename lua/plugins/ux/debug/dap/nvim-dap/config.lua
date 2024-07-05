local dap = require('dap')

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.nvim/.mason/packages/node-debug2-adapter/out/src/nodeDebug.js'},
}

dap.configurations.typescript = {
	{
      type = 'node2',
      request = 'attach',
      address = "127.0.0.1",
      port = 9229,
      localRoot = vim.fn.getcwd(),
      remoteRoot = "/home/vcap/app",
      sourceMaps = true,
      protocol = 'inspector',
      skipFiles = {'<node_internals>/**/*.js'},
	}
}

dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    -- processId = require'dap.utils'.pick_process,
		connect = function()
			local host = vim.fn.input('Host [127.0.0.1]: ')
			host = host ~= '' and host or '127.0.0.1'
			local port = tonumber(vim.fn.input('Port [9229]: ')) or 9229
			return { host = host, port = port }
		end,
  },
  {
		name = 'Attach remote',
		type = 'node2',
		request = 'attach',
		connect = function()
			local host = vim.fn.input('Host [127.0.0.1]: ')
			host = host ~= '' and host or '127.0.0.1'
			local port = tonumber(vim.fn.input('Port [9229]: ')) or 9229
			return { host = host, port = port }
		end,
	},
}

