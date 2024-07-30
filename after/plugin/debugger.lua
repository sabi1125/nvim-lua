local dap = require('dap')
require('dapui').setup()
require('dap-go').setup()


dap.configurations.go = {
    {
        type = 'go';
        request = 'launch';
        name = "launch.json";
        program = "${file}";
        pythonPath = function()
            return '/usr/bin/go'
        end;
    },
}


