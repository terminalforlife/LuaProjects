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
--
-- Scoping works in Lua much how it does in Shell, it seems, except that when
-- a function assigns a variable within, it will not then be accessible outside
-- of itself, regardless of whether the function is called or not.
--
-- Like in Shell, no error occurs simply because an undefined variable's value
-- is requested, unlike languages like Perl which are by default more strict.
--
-- Using `dofile()`, `loadfile()`, or `load()` lets you run external code. See
-- Further down for an example of all but the latter.
-------------------------------------------------------------------------------

-- The usual. Same syntax as Perl and many other languages, it seems. This
-- function cannot redirect data to a file, unlike in Perl.
print('Hello World!')

-- Variable assignment is as expected, except there doesn't seem to be a need
-- for `my`, `our`, `set`, `let`, or something like that. Very similar to
-- JavaScript, actually, in that there isn't a sigil.
--
-- Variable types: number (int & float; same approach as JavaScript), string, -
--                 boolean, table, thread, and userdata, nil, function
--
--                 Tables are basically arrays OR hashes. Threads are called
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

Count = 0
while true do
	Count = Count + 1
	print('Iteration: ' .. Count)

	-- Using one-line syntax. Very strange, without something to separate
	-- commands from keywords, but there you go. Probably a better method.
	-- Weirdly enough, Lua only has `break`; no `continue` or `next`.
	if Count == 3 then break end
end

-- By default, a for loop increments by 1. The initial condition is like half
-- of the C-style condition, unless something other than +1 is required.
for Count = 0, 3 do
	print('Iteration: ' .. Count)
end

-- The `repeat until` loop is basically a backwards while loop. Although it
-- seems like it's barely used and the developers themselves apparently are or
-- were thinking of ditching it.
repeat
	print('blah')
until Count == 3

-- Bizarrely, Lua's indexing of tables begin at 1! Very unusual. So, here we're
-- just assigning a table, which is basically an array.
--
-- Assigning indeces or the table itself to `nil` will free up the memory, much
-- how it would in other languages; the need for this depends on the scope.
Array = {'index one', 'index' .. 2, 5, type(Count)}
print("Index '4' of table 'Array' is '" .. Array[4] .. "'.")

-- A hash (also a table, ambiguously enough) is basically the same thing as an
-- array form, but with key=value pairs, similar to hashes in Perl. Oddly, -
-- though, you don't quote the names. This is getting weirder each second.
-- These keys can also be numeric, instead of strings.
Hash = {one = 1, two = 2, three = 3}

-- Accessing the "table" is much like OO interfaces, which is kinda cool.
-- Tables are also used to create classes, similar to hashes in Perl.
print("Value of 'two' is: " .. Hash.two)

-- The `#` operator(?) is used exactly how it is in Shell, except it doesn't
-- seem to work with hash-style "tables", but array-style "tables" are fine.
print('There are ' .. #Array .. "' indeces in the 'Array' table.")

-- Defining a function works more like in VimScript. The parentheses are usable
-- though, as in JS or Perl. Functions are considered a variable type in Lua, -
-- which is apparently very important.
function Func()
	print("I'm inside a function!")
end

-- Calling a function is like in VimScript, AWK, Perl, JS, etc.
Func()

-- You can also define a function by using the following syntax:
Func = function()
	Value = "I'm still inside a function!"

	return(Value)
end

-- Or, you can return a value using the `return` command in a function, as done
-- in the above function definition.
print(Func())

-- This will load up and immediately execute the provided Lua file. This is
-- apparently the slowest method.
dofile('./module.lua')
-- Whereas this will load up but NOT execute the file. Instead, the file is
-- wrapped within a function, the name for which you give it, as shown below.
FileFunc = loadfile('./module.lua')

-- Coroutines are useful, apparently, which seems to be because of their stop
-- and start ability. They seem to be very flexible in when they can run.
CoRout = coroutine.create(
	function()
		print("I'm inside of a coroutine!")

		-- Using the `yield()` function seems to say "stop here, until you're
		-- told to resume() again`; pretty damn awesome!
		coroutine.yield()

		print("I'm still inside of a coroutine!")
	end
)

-- Calling the above defined coroutine. You cannot resume a coroutine which has
-- already finished (thus "dead"), so care should be taken.
coroutine.resume(CoRout)

-- Display the current status (in this case, 'suspended') of a coroutine.
print("Coroutine 'CoRout' is in the '" .. coroutine.status(CoRout) .. "' state.")

-- Demonstration of the `pairs()` function, which is like the `keys()` function
-- in Perl, except it'll both keys AND their paired value. In this example, you
-- can see that tables, or at least hash-types thereof, are also randomized.
print("Contents of the 'Hash' table:")
for Key, Value in pairs(Hash) do
	print("\tKey '" .. Key .. "' is equal to '" .. Value .. "'.")
end

-- Here, the `:match()` function seems to work like grep(1)'s `-o` flag. This
-- might be because it's just one line of input. With multi-line input, it does
-- seem to work like regular grep(1).
A = 'do not do that, or else'
print(A:match('or'))

-- Fetching data from the user, on the terminal, is simple in Lua. Probably
-- bad to use `write()` like this, but I dunno how else to omit the newline.
--
-- By default, `read()` uses `io.stdin` (STDIN).
io.write('Prompt: ')
Data = io.read()
print('You said: ' .. Data)
