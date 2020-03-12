--!/usr/bin/env lua5.3

-------------------------------------------------------------------------------
-- Project Name      - LuaProjects/source/conf.lua
-- Started On        - Wed 11 Mar 21:44:07 GMT 2020
-- Last Change       - Wed 11 Mar 21:47:54 GMT 2020
-- Author E-Mail     - terminalforlife@yahoo.com
-- Author GitHub     - https://github.com/terminalforlife
-------------------------------------------------------------------------------
-- Optional configuration file for Love.
-------------------------------------------------------------------------------

function love.conf(Config)
	Config.window.title = 'Love Game Test'
	Config.window.icon = nil
	Config.version = '0.9.1'

	-- Fullscreen resolution settings.
	Config.window.fullscreen = true
	Config.window.fullscreentype = 'desktop'
	Config.window.resizable = false
	Config.window.height = 1080
	Config.window.width = 1920
end
