-- Eisdiele cooking recipes
local modname = eisdiele.modname

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = modname .. ":mushroom_red_cooked",
	recipe = "flowers:mushroom_red"
})
