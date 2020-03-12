--!/usr/bin/env lua5.3

-------------------------------------------------------------------------------
-- Project Name      - LuaProjects/source/readfile.lua
-- Started On        - Wed 11 Mar 21:44:07 GMT 2020
-- Last Change       - Wed 11 Mar 21:47:54 GMT 2020
-- Author E-Mail     - terminalforlife@yahoo.com
-- Author GitHub     - https://github.com/terminalforlife
-------------------------------------------------------------------------------
-- Messing with the `io` module in Lua.
-------------------------------------------------------------------------------

-- Specify which file the `write()` function will use, when writing data.
--io.output('./test.txt')

-- Write the given data (the string) to the above specified file.
--io.write('test line')

-- Returns the file to the standard (the default) to STDOUT. Instead of the
-- `stdout` value, you can instead use `stderr`.
--io.output(io.stdout)

-- Much like `write()` but the other way around. The `input()` and `output()`
-- just tells Lua which input and output file to operate on, respectively.
-- The default file is `io.stdin`, and similar to above, can be set back to it.
io.input('./io.lua')

-- In this block, we roughly mimic a Shell's `while read` loop. But this seems
-- clumsy and inefficient, so a better approach would be to replace the first
-- line with just: `while true do`
--
-- The `math.huge` (`math` being a module) stores an infinite (kinda?) value.
for Int = 1, math.huge do
	Line = io.read()

	if type(Line) == 'nil' then
		break
	else
		print(Line)
	end
end
