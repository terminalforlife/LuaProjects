--!/usr/bin/env lua5.3

-------------------------------------------------------------------------------
-- Project Name      - LuaProjects/source/os.lua
-- Started On        - Wed 11 Mar 21:44:07 GMT 2020
-- Last Change       - Wed 11 Mar 21:47:54 GMT 2020
-- Author E-Mail     - terminalforlife@yahoo.com
-- Author GitHub     - https://github.com/terminalforlife
-------------------------------------------------------------------------------
-- Exploring the `os` module in Lua.
-------------------------------------------------------------------------------

-- Using the `os` module and its `date()` function, you can basically mimic
-- the shell's date(1) command, which is freaking awesome. If you didn't give
-- any arguments (no formatting, basically), `date()` would just output a
-- pre-formatted date AND time, much like date(1)'s default functionality.
FileName = os.date('%F_%X.txt')

-- Execute a Shell command, much like `os.system()` in Perl.
os.execute("echo 'I am echo(1), and you executed me from the shell!'")

-- Same functionality as the `%ENV` hash in Perl and `environ()` in AWK.
print('I am ' .. os.getenv('USER') .. ', and my UID is ' .. os.getid)
