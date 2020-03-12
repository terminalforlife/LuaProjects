--!/usr/bin/env lua5.3

-------------------------------------------------------------------------------
-- Project Name      - LuaProjects/source/lsbins.lua
-- Started On        - Thu 12 Mar 02:46:18 GMT 2020
-- Last Change       - Thu 12 Mar 02:46:18 GMT 2020
-- Author E-Mail     - terminalforlife@yahoo.com
-- Author GitHub     - https://github.com/terminalforlife
-------------------------------------------------------------------------------
-- Hoping to mimic lsbins(1) functionality with Lua, since the JavaScript
-- attempt did not go as well as I had hoped.
-------------------------------------------------------------------------------

require 'io'
require 'os'
require 'string'

CurVer = '2020-03-12'

-- Definitely not an ideal approach, but since I'm probably always gonna use
-- the same file extension (`*.lua`), this is probably fine enough.
Progrm = arg[0]:sub(1, arg[0]:len() - 4)

function Usage()
	io.write(
		'Usage: ' .. Progrm .. ' [OPTS]\n\n',

		'  -h, --help               - Display this help information.\n',
		'  -v, --version            - Output the version datestamp.\n'
	)
end

-- Finally, a solution to parse arguments properly(?) in Lua. This is awesome.
-- I'll miss having access to a `shift` command of sorts, but this'll do.
--
-- Very disappointed. Looks like Lua doesn't use REGEX, it uses "patterns".
-- Also, to further disappoint, their pattern matching doesn't allow the
-- `(this|that)` syntax, like in REGEX; this makes argument processing ugly.
while #arg > 0 do
	if arg[1]:match('^--version$') or arg[1]:match('^-v$') then
		print(CurVer); os.exit()
	elseif arg[1]:match('^--help$') or arg[1]:match('^-h$') then
		Usage()
	end

	-- Mimics `shift` by removing the first index in the array.
	table.remove(arg, 1)
end
