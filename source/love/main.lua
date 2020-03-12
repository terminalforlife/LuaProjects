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

XNow = 0
YNow = 0

function love.draw()
	love.graphics.print('Demonstration.', 100, 100)

	-- Draw a one-pixel line around the screen. Target_X, Target_Y, -
	-- Destination_X, then Destination_Y.
	love.graphics.line(0, 0, 0, 1080)
	love.graphics.line(0, 0, 1920, 0)
	love.graphics.line(1920, 0, 1920, 1080)
	love.graphics.line(1920, 1080, 0, 1080)

	love.graphics.setColor(255, 0, 0, 200)

	love.graphics.line(XNow + 1, 100, 200, 200)
end

function love.update(delta)
	if XNow < love.graphics.getWidth() then
		XNow = XNow + 100 * delta
	else
		XNow = 0
	end
end

function love.load()
	print('Loading happens now.')

	love.graphics.setBackgroundColor(20, 20, 20, 255)
end

function love.quit()
	print('Cleanup happens now.')
end
