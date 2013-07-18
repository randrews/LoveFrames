--[[------------------------------------------------
	-- Love Frames - A GUI library for LOVE --
	-- Copyright (c) 2013 Kenny Shields --
--]]------------------------------------------------

-- skin table
local skin = {}

local blue = loveframes.skins.available["Blue"]

-- skin info (you always need this in a skin)
skin.name = "Orange"
skin.author = "Nikolai Resokav"
skin.version = "1.0"

-- controls 
skin.controls = loveframes.util.Copy(blue.controls)

-- multichoicerow
skin.controls.multichoicerow_body_hover_color       = {255, 153, 0, 255}

-- checkbox
skin.controls.checkbox_check_color                  = {255, 153, 0, 255}

-- columnlistrow
skin.controls.columnlistrow_body_selected_color     = {255, 153, 0, 255}
skin.controls.columnlistrow_body_hover_color        = {255, 173, 51, 255}
skin.controls.columnlistrow_text_color              = {100, 100, 100, 255}

-- use the blue skin's register handler, because we'll load images the same way
skin.OnRegister = blue.OnRegister

-- register the skin
loveframes.skins.Register(skin)