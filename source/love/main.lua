--!/usr/bin/env lua5.3

-------------------------------------------------------------------------------
-- Project Name      - LuaProjects/source/love.lua
-- Started On        - Wed 11 Mar 21:44:07 GMT 2020
-- Last Change       - Wed 11 Mar 21:47:54 GMT 2020
-- Author E-Mail     - terminalforlife@yahoo.com
-- Author GitHub     - https://github.com/terminalforlife
-------------------------------------------------------------------------------
-- Exploring the `love` module (>= 0.9.1-3) in Lua, which seems to be an OpenGL
-- 2D game development framework for the Lua programming language.
-------------------------------------------------------------------------------

function love.draw()
	love.graphics.print('Demonstration.', 100, 100)
end

function love.quit()
	print('Cleanup happens now.')
end
