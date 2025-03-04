local function script_path()
    local str = debug.getinfo(1, 'S').source:sub(2)
    return str:match('(.*[/ \\])')
end
local path = script_path() .. '?.lua'
package.path = package.path .. ';' .. path .. ';'

local log = require('log')

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
        },
        test2 = {
            name = 'test2',
            output_opt = {
                formatter = log.formatters.simple_formatter,
                formatter_opt = {show_debug_trace = true},
                opt = {}
            },
            level = 2,
            output = log.out_putters.std_outputter
        }
    }
})

local l = log.getLogger('test')
l:debug("TEST debug")
l:info("TEST info")
l:warn("TEST warn")
l:error("TEST error")
l:fatal("TEST fatal")

local l2 = log.getLogger('test2')
l2:debug("TEST2 debug")
l2:info("TEST2 info")
l2:warn("TEST2 warn")
l2:error("TEST2 error")
l2:fatal("TEST2 fatal")

l:info("well~~")

print("done")

