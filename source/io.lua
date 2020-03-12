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
--
-- The `elseif` condition is awesome, here. In Lua, you can suffix the
-- `match()` function, like: `Variable:match(REGEX)` This can be used for
-- testing and hopefully plenty of other cool things.
--for Int = 1, math.huge do
--	Line = io.read()
--
--	if type(Line) == 'nil' then
--		break
--	elseif not Line:match('^-') then
--		print(Line)
--	end
--end

-- Oh for crying out loud. KarmaKilledtheCat (YouTube) failed to mention this
-- far better method of reading files, until much later! This is incredible!
-- So much cleaner than languages like Perl. I'm loving Lua so far.
--
-- So, presumably, `io.lines()` returns an array (table) consisting of each
-- line in the file, over which the `for` loop iterates, per `Line` variable.
--
-- No need to break from the loop if the `Line` is `nil`, here!
--
-- It's also possible to read N number of lines, by giving the `read()`
-- function the `'*N'` argument, where N is the number of lines to read.
for Line in io.lines() do
	print(Line)
end
