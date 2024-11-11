local dap = require('dap')

-- Adapter для Node.js с использованием node-debug2
dap.adapters.node2 = {
	type = 'executable',
	command = 'node',
	args = { os.getenv('HOME') .. '/.nvim/.mason/packages/node-debug2-adapter/out/src/nodeDebug.js' },
}

-- Adapter для Bun
dap.adapters.bun = {
	type = 'executable',
	command = 'bun',              -- Указание исполняемого файла для Bun
	args = { '--inspect-brk' },   -- Параметры для запуска с поддержкой debug
	name = 'Launch Bun',
}

-- Конфигурации для TypeScript
dap.configurations.typescript = {
 {
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
	{
		name = 'Node Attach',
		type = 'node2',
		request = 'attach',
		-- address = "localhost",
		port = 9229,
		-- localRoot = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = 'inspector',
		skipFiles = { '<node_internals>/**/*.js' },
		restart = true,
	},
	{
		type = "bun",
		request = "attach",
		name = "Bun listen",
		websocketAddress = "ws://localhost:9229/",
	},
	{
		type = 'bun',
		request = 'launch',
		name = 'Launch Bun script',
		program = "${file}",     -- Текущий файл
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = 'inspector',
		console = 'integratedTerminal',
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
	{
		name = 'Attach to process',
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

-- Конфигурации для JavaScript
dap.configurations.javascript = {
	{
		name = 'Launch Node',
		type = 'node2',
		request = 'launch',
		program = '${file}',
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = 'inspector',
		console = 'integratedTerminal',
	},
	{
		name = 'Attach to process',
		type = 'node2',
		request = 'attach',
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
