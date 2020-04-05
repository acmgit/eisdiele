local S = eisdiele.S
local modname = eisdiele.modname

eisdiele.item = {
                -- General
                    {
                        name = "bowl",
                        des = S("Ice-Bowl"),
                        grp = {food_bowl=1},
                        eat = nil
                    },
                    {
                        name = "wafer",
                        des = S("Wafer"),
                        grp = {food_ice = 1, food_wafer = 1},
                        eat = 1
                    },
                    
                    {
                        name = "cocoa_powder",
                        des = S("Cocoa Powder"),
                        grp = {food_cocoa = 1},
                        eat = nil
                    },
                    {
                        name = "mushroom_red_cooked",
                        des = S("Mushroom red (cooked)"),
                        grp = {food_basis = 1},
                        eat = nil
                    },
    
                } -- eisdiele.item

eisdiele.ice_ball = {
    
                -- Single Ice-Balls
                    {          
                        name = "blackberry",
                        des = S("Blackberry"),
                        eat = 1,
                    },
                    {
                        name = "blueberry",
                        des = S("Blueberry"),
                        eat = 1,
                    },
                    {   
                        name = "chocolate",
                        des = S("Chocolate"),
                        eat = 1,
                    },                                    
                    {   
                        name = "pistachio",
                        des = S("Pistachio"),
                        eat = 1,
                    },
                    {   
                        name = "strawberry",
                        des = S("Strawberry"),
                        eat = 1,
                    },
                    {   
                        name = "vanilla",
                        des = S("Vanilla"),
                        eat = 1,
                    },
} -- ice_balls

eisdiele.ice_cream = {
                        {   
                            name = "blackberry_lemon",
                            des = S("Blackberry-Lemon"),
                            eat = 2,
                        },
                        {   
                            name = "blueberry_lemon",
                            des = S("Blueberry-Lemon"),
                            eat = 2,
                        },
                        {   
                            name = "blueberry_raspberry",
                            des = S("Blueberry-Raspberry"),
                            eat = 2,
                        },
                        {   name = "pistachio_vanilla",
                            des = S("Pistachio-Vanilla"),
                            eat = 2,
                        },
                        {   name = "strawberry_raspberry",
                            des = S("Strawberry-Raspberry"),
                            eat = 2,
                        },
                        {   name = "walnut_vanilla",
                            des = S("Walnut-Vanilla"),
                            eat = 2,
                        },
} -- ice_cream

eisdiele.ice_wafer = {
        -- only Dual-Balls, because Single are the same balls
                        {   name = "blackberry_pistachio",
                            des = S("Blackberry-Pistachio"),
                            eat = 3,
                        },
                        {   
                            name = "blackberry_strawberry",
                            des = S("Blackberry-Strawberry"),
                            eat = 3,
                        },
                        {
                            name = "blueberry_chocolate",
                            des = S("Blueberry-Chocolate"),
                            eat = 3,
                        },
                        {
                            name = "blueberry_vanilla",
                            des = S("Blueberry-Vanilla"),
                            eat = 3,
                        },
                        {
                            name = "chocolate_strawberry",
                            des = S("Chocolate-Strawberry"),
                            eat = 3,
                        },
--[[ -- Double --
                        {
                            name = "pistachio_blackberry",
                            des = S("Pistachio-Blackberry"),
                            eat = 3,
                        },
]]--
                        {
                            name = "pistachio_blueberry",
                            des = S("Pistachio-Blueberry"),
                            eat = 3,
                        },
                        {
                            name = "strawberry_blueberry",
                            des = S("Strawberry-Blueberry"),
                            eat = 3,
                        },
                        {
                            name = "strawberry_pistachio",
                            des = S("Strawberry-Pistachio"),
                            eat = 3,
                        },    
} -- ice_wafer

--[[
-- not defined, because it's the same as cream, but only with wafer
eisdiele.wafer_cream = {}
]]--
local prename = "ice_cup_"
local predes = S("Ice Cup")

eisdiele.ice_cup = {
                        {
                            name = prename .. "america",
                            des = predes .. " " .. S("America"),
                            eat = 4,
                        },
    
                        {
                            name = prename .. "england",
                            des = predes .. " " .. S("England"),
                            eat = 4,
                        },    
                        {
                            name = prename .. "french",
                            des = predes .. " " .. S("French"),
                            eat = 4,
                        },
                        {
                            name = prename .. "german",
                            des = predes .. " " .. S("German"),
                            eat = 4,
                        },    
                        {   
                            name = prename .. "japan",
                            des = predes .. " " .. S("Japan"),
                            eat = 4,
                        },
                        {   
                            name = prename .. "new_zealand",
                            des = predes .. " " .. S("New Zealand"),
                            eat = 4,
                        },
                        {
                            name = prename .. "zaire",
                            des = predes .. " " .. S("Zaire"),
                            eat = 4,
                        },
    
} -- ice_cup

-- Items like bowl and wafer
for _, value in pairs(eisdiele.item) do
    if(value.eat ~= nil) then
        minetest.register_craftitem(eisdiele.modname .. ":" .. value.name,
                                    {
                                        description = value.des,
                                        inventory_image = eisdiele.modname .. "_" .. value.name .. ".png",
                                        groups = value.grp,
                                        on_use = minetest.item_eat(value.eat),
                                    })
        
    else
        minetest.register_craftitem(eisdiele.modname .. ":" .. value.name,
                                    {
                                        description = value.des,
                                        inventory_image = eisdiele.modname .. "_" .. value.name .. ".png",
                                        groups = value.grp,
                                    })
    end -- if(value.eat
        
end -- for _, value
                        
-- Single Ice-Balls
for _, value in pairs(eisdiele.ice_ball) do
        minetest.register_craftitem(eisdiele.modname .. ":ice_ball_" .. value.name,
                                    {
                                        description = value.des,
                                        inventory_image = eisdiele.modname .. "_ice_ball_" .. value.name .. ".png",
                                        groups = value.grp,
                                        on_use = minetest.item_eat(value.eat),
                                    })

end -- for _, value

-- Single Ice-Wafer
for _, value in pairs(eisdiele.ice_ball) do
        minetest.register_craftitem(eisdiele.modname .. ":ice_wafer_" .. value.name,
                                    {
                                        description = value.des,
                                        inventory_image = eisdiele.modname .. "_ice_wafer_" .. value.name .. ".png",
                                        groups = value.grp,
                                        on_use = minetest.item_eat(value.eat+1),
                                    })

end -- for _, value

-- Double Ice-Wafer
for _, value in pairs(eisdiele.ice_wafer) do
        minetest.register_craftitem(eisdiele.modname .. ":ice_wafer_" .. value.name,
                                    {
                                        description = value.des,
                                        inventory_image = eisdiele.modname .. "_ice_wafer_" .. value.name .. ".png",
                                        groups = value.grp,
                                        on_use = minetest.item_eat(value.eat),
                                    })

end -- for _, value

-- Only Ice-Cream
for _, value in pairs(eisdiele.ice_cream) do
        minetest.register_craftitem(eisdiele.modname .. ":ice_cream_" .. value.name,
                                    {
                                        description = value.des,
                                        inventory_image = eisdiele.modname .. "_ice_cream_" .. value.name .. ".png",
                                        groups = value.grp,
                                        on_use = minetest.item_eat(value.eat),
                                    })

end -- for _, value

-- Ice-Cream in Wafer
for _, value in pairs(eisdiele.ice_cream) do
        minetest.register_craftitem(eisdiele.modname .. ":ice_wafercream_" .. value.name,
                                    {
                                        description = value.des,
                                        inventory_image = eisdiele.modname .. "_ice_wafercream_" .. value.name .. ".png",
                                        groups = value.grp,
                                        on_use = minetest.item_eat(value.eat),
                                    })

end -- for _, value

-- Ice-Cups
for _, value in pairs(eisdiele.ice_cup) do
        minetest.register_craftitem(eisdiele.modname .. ":" .. value.name,
                                    {
                                        description = value.des,
                                        inventory_image = eisdiele.modname .. "_" .. value.name .. ".png",
                                        groups = value.grp,
                                        on_use = minetest.item_eat(value.eat),
                                    })

end -- for _, value
