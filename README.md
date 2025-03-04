# Logua

A simple logging library for Lua.Supports rotes,multiple outputters and formatters.Both easy to use and powerful.

[*] Rotes
[*] Multiple outputters
[*] Formatters
[*] Easy to use

## Prerequisites

- Lua 5.1 or higher *(Tell the truth, I don't know the lower version)*
- You can also use it in Neovim (may be you need `.\outputters\nvim_outputter.lua`)
- Nothing else, it's a simple logging library.

## Instalation

This library is only one file, so you can just copy the `log.lua` file to your project directory and require it in your code.

You can also download additional outputters and formatters from the `outputters` and `formatters` directories and add them to your project.

## Useage

example:`./example.lua`

```lua
local log = require('log') --or yor own log module name

-- set up log options or use the default options
log.setup({
    rotes = {
        test = {
            name = 'test',
            output_opt = {
                formatter = log.formatters.simple_formatter,
                formatter_opt = {show_debug_trace = true},
                opt = {}
            },
            level = 0,
            output = log.out_putters.std_outputter
        }
    }
})

-- and then you can use `getLogger` to get a logger instance

local l = log.getLogger('test')
l:debug("TEST debug")
l:info("TEST info")
l:warn("TEST warn")
l:error("TEST error")
l:fatal("TEST fatal")
```

## Options

```lua
M.opt = {
    log_level = "INFO", -- log level, can be "DEBUG", "INFO", "WARN", "ERROR", "FATAL"
    rotes = { -- rotes table,`name`->`output_opt`,or you can use `root` for everyone
        root = {
            name = 'root',
            output_opt = {
                formatter = M.formatters.simple_formatter,
                formatter_opt = {show_debug_trace = M.show_debug_trace},
                opt = {}
            },
            level = 0,
            output = M.out_putters.std_outputter
        }
    },
    outputs = {std = M.out_putters.std_outputter}, -- `rote name`-> `outputter`
    show_debug_trace = false -- some formatter can use this option to decides whether to show debug trace or not.
}
```
## And more?

__Yes,Kagiyama Hina is cute~~__

