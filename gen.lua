#!/usr/bin/lua

local sh = require("sh")

local _ = tostring
local git = sh.command("git")

local stdout = _(git(
	"submodule",
	"update",
	"--init",
	"--recursive",
	"--checkout",
	"--force"
))

local rsync = sh.command("rsync")

for mod in stdout:gmatch("'mods/([%a%-]+)'") do
	rsync(
		"--recursive",
		"--times",
		"--noatime",
		"mods/" .. mod .. "/interface/",
		"interface/"
	)
	rsync(
		"--recursive",
		"--times",
		"--noatime",
		"mods/" .. mod .. "/gfx/",
		"gfx/"
	)
end
