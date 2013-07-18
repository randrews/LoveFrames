--[[------------------------------------------------
	-- Love Frames - A GUI library for LOVE --
	-- Copyright (c) 2013 Kenny Shields --
--]]------------------------------------------------

-- skins library
loveframes.skins = {}

-- available skins
loveframes.skins.available = {}

--[[---------------------------------------------------------
	- func: Register(skin)
	- desc: registers a skin
--]]---------------------------------------------------------
function loveframes.skins.Register(skin)
	
	local name = skin.name
	local author = skin.author
	local version = skin.version
	local namecheck = loveframes.skins.available[name]
	
	if name == "" or not name then
		loveframes.util.Error("Could not register skin: Invalid or missing name data.")
	end
	
	if author == "" or not author then
		loveframes.util.Error("Could not register skin: Invalid or missing author data.")
	end
	
	if version == "" or not version then
		loveframes.util.Error("Could not register skin: Invalid or missing version data.")
	end
	
	if namecheck then
		loveframes.util.Error("Could not register skin: A skin with the name '" ..name.. "' already exists.")
	end
	
	loveframes.skins.available[name] = skin
	
	if skin.OnRegister then skin:OnRegister() end
end

--[[---------------------------------------------------------
	- func: GetAvailable()
	- desc: gets all available skins
--]]---------------------------------------------------------
function loveframes.skins.GetAvailable()

	local available = loveframes.skins.available
	return available
	
end