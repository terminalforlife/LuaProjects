--!/usr/bin/env lua5.3

-------------------------------------------------------------------------------
-- Project Name      - LuaProjects/source/hello.lua
-- Started On        - Wed 11 Mar 21:44:07 GMT 2020
-- Last Change       - Wed 11 Mar 21:47:54 GMT 2020
-- Author E-Mail     - terminalforlife@yahoo.com
-- Author GitHub     - https://github.com/terminalforlife
-------------------------------------------------------------------------------
-- Comments in Lua, weirdly, are two dashes (`--`).
--
-- Logical 'and' and 'or' comparison operators are in Lua too, seeming to work
-- much as they do in Perl.
-------------------------------------------------------------------------------

-- The usual. Same syntax as Perl and many other languages, it seems.
print('Hello World!')

-- Variable assignment is as expected, except there doesn't seem to be a need
-- for `my`, `our`, `set`, `let`, or something like that. Very similar to
-- JavaScript, actually, in that there isn't a sigil.
--
-- Variable types: number (int & float; same approach as JavaScript), string, -
--                 boolean, table, thread, and userdata, nil, function
--
--                 Tables are basically arrays. Threads are called
--                 "co-routines", according to KarmaKilledtheCat (YouTube). The
--                 userdata type allows you to store raw C data.
Key = 'Value'

-- Arithmetic like this works as it does in Perl. The arithmetic operators seem
-- to be as standard. (-, +, /, %, *, ^)
Integer = 5 + 2

-- The concatenation operator seems to be `..`, not `+` (JS) or `.` (Perl).
print('Key = ' .. Key)

-- Stringing commands together onto the one line is pretty standard.
print('Line one...'); print('...line two.')

-- If statements are weird. Reminds me of a shell I remember using at one
-- point, because it has then on the same line, but nothing like `;` you see in
-- the Bourne Shell and derivatives.
--
-- Also, frustratingly enough, it's `elseif`; not `else if` like in JS, `elif`
-- like in Shell, or even `elsif` like in Perl, but `elseif`. Annoying.
--
-- The statement ending in the `end` keyword reminds me of VimScript's `endif`.
if 10 == 10 then
	print("The value of '10' and '10' are the same.")
elseif 10 == 11 then
	print("The value of '10' and '11' are the same.")
else
	print("The value of '10' and '10' are NOT the same.")
end

-- Like `typeof()` in JS, the `type()` function returns the type of the value.
--
-- The `==` comparison operator, like in JS, works on strings and numbers.
if type(Key) == 'string' then
	print("The 'Key' variable is of type '" .. type(Key) .. "'.")
end

