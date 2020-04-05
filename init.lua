--[[
	**********************************************
	***               Eisdiele                 ***
    ***                                        ***
    ***  Eisdiele is a Mod for Minetest        ***
    ***  and provides delicious Ice            ***
    ***  to the World of Minetest.             ***
    ***                                        ***
    ***  License: GPL 3.0 by A.C.M.            ***
    ***                                        ***
	**********************************************
]]--

eisdiele = {}

eisdiele.modname = minetest.get_current_modname()
eisdiele.modpath = minetest.get_modpath(eisdiele.modname)
eisdiele.S = nil
local S

if(minetest.get_translator ~= nil) then
    S = minetest.get_translator(eisdiele.modname)

else
    S = function ( s ) return s end

end

eisdiele.S = S

dofile(eisdiele.modpath .. "/items.lua")
dofile(eisdiele.modpath .. "/recipes.lua")
dofile(eisdiele.modpath .. "/recipes_cook.lua")
dofile(eisdiele.modpath .. "/register_mods.lua")

minetest.log("info", "[MOD] " .. eisdiele.modname .. " is successfully loaded.")
