local S = eisdiele.S
local ice_ball_basic = "default:snow"
local modname = eisdiele.modname

local recipes = 
        {
            -- General
            {
                name = "bowl",
                rec = {
                        {"default:clay_lump","default:snow","default:clay_lump"},
                        {"","default:clay_lump",""},
                       },
                rep = nil,
             },                        
            {
                name = "wafer 5",
                rec = {
                            {"group:food_flour","group:food_sugar","group:food_flour"},
                            {"","group:food_flour",""},
                       },
                rep = nil,
             },
            
            {
                name = "cocoa_powder 3",
                rec = {
                            {"food_extend:baking_powder","dye:brown"},
                       },
                rep = nil,
             },
            {
                name = "cocoa_powder 3",
                rec = {
                            {"eisdiele:mushroom_red_cooked","dye:brown"},
                       },
                rep = nil,
             },

            -- Ice balls
            {
                name = "ice_ball_blueberry",
                rec = {
                            {ice_ball_basic},
                            {"group:food_blueberry"},
                       },
                rep = nil,
             },
            {
                name = "ice_ball_blackberry",
                rec = {
                            {ice_ball_basic, "", ""},
                            {"group:food_blueberry", "dye:black", ""},
                       },
                rep = nil,
             },
            {
                name = "ice_ball_chocolate",
                rec = {
                            {ice_ball_basic},
                            {"group:food_milk_chocolate"},
                       },
                rep = nil,
             },
            {
                name = "ice_ball_pistachio",
                rec = {
                            {ice_ball_basic},
                            {"default:papyrus"},
                       },
                rep = nil,
             },
            {
                name = "ice_ball_strawberry",
                rec = {
                            {ice_ball_basic},
                            {"group:food_strawberry"},
                       },
                rep = nil,
             },
            {
                name = "ice_ball_vanilla",
                rec = {
                            {ice_ball_basic,"", ""},
                            {"group:food_milk","group:food_butter",""},
                            {"group:food_sugar","",""},
                       },
                rep = nil,
             },
            
            -- Ice cream
            {
                name = "ice_cream_blackberry_lemon",
                rec = {
                            {ice_ball_basic,""},
                            {"group:food_milk","dye:black"},
                            {"group:food_lemon","group:food_blueberry"}

                       },
                rep = nil,
             },
            {
                name = "ice_cream_blueberry_lemon",
                rec = {
                            {ice_ball_basic,""},
                            {"group:food_milk",""},
                            {"group:food_blueberry","group:food_lemon"}

                       },
                rep = nil,
             },
            {
                name = "ice_cream_blueberry_raspberry",
                rec = {
                            {ice_ball_basic,""},
                            {"group:food_milk","dye:pink"},
                            {"group:food_blueberry","group:food_strawberry"}

                       },
                rep = nil,
             },
            {
                name = "ice_cream_pistachio_vanilla",
                rec = {
                            {ice_ball_basic,""},
                            {"group:food_milk","group:food_butter"},
                            {"group:food_sugar","default:papyrus"},

                       },
                rep = nil,
             },
            {
                name = "ice_cream_strawberry_raspberry",
                rec = {
                            {ice_ball_basic,""},
                            {"group:food_milk","dye:pink"},
                            {"group:food_strawberry","group:food_strawberry"}

                       },
                rep = nil,
             },
            {
                name = "ice_cream_walnut_vanilla",
                rec = {
                            {ice_ball_basic,""},
                            {"group:food_milk","group:food_sugar"},
                            {"group:food_walnut","group:food_butter"}

                       },
                rep = nil,
             },
            {
                name = "ice_cup_america",
                rec = {
                            {
                                modname .. ":ice_cream_blackberry_lemon",
                                modname .. ":ice_cream_blueberry_raspberry",
                                modname .. ":ice_cream_pistachio_vanilla"
                            },
                            {"","group:food_bowl", ""},
                       },
                rep = {
                            {"group:food_bowl", modname .. ":bowl"},
                        },
             },
            {
                name = "ice_cup_england",
                rec = {
                            {
                                modname .. ":ice_cream_blueberry_raspberry",
                                modname .. ":ice_cream_blackberry_lemon",
                                modname .. ":ice_cream_strawberry_raspberry"
                            },
                            {"","group:food_bowl", ""},
                       },
                rep = {
                            {"group:food_bowl", modname .. ":bowl"},
                        },
             },
            {
                name = "ice_cup_french",
                rec = {
                            {
                                modname .. ":ice_cream_blackberry_lemon",
                                modname .. ":ice_cream_walnut_vanilla",
                                modname .. ":ice_cream_blueberry_raspberry"
                            },
                            {"","group:food_bowl", ""},
                       },
                rep = {
                            {"group:food_bowl", modname .. ":bowl"},
                        },
             },
            {
                name = "ice_cup_german",
                rec = {
                            {
                                modname .. ":ice_cream_walnut_vanilla",
                                modname .. ":ice_cream_blueberry_lemon",
                                modname .. ":ice_cream_blackberry_lemon"
                            },
                            {"","group:food_bowl", ""},
                       },
                rep = {
                            {"group:food_bowl", modname .. ":bowl"},
                        },
             },
            {
                name = "ice_cup_japan",
                rec = {
                            {
                                modname .. ":ice_cream_blueberry_lemon",
                                modname .. ":ice_cream_strawberry_raspberry",
                                modname .. ":ice_cream_walnut_vanilla"
                            },
                            {"","group:food_bowl", ""},
                       },
                rep = {
                            {"group:food_bowl", modname .. ":bowl"},
                        },
             },
            {
                name = "ice_cup_new_zealand",
                rec = {
                            {
                                modname .. ":ice_cream_pistachio_vanilla",
                                modname .. ":ice_cream_strawberry_raspberry",
                                modname .. ":ice_cream_blueberry_lemon"
                            },
                            {"","group:food_bowl", ""},
                       },
                rep = {
                            {"group:food_bowl", modname .. ":bowl"},
                        },
             },
            {
                name = "ice_cup_zaire",
                rec = {
                            {
                                modname .. ":ice_cream_strawberry_raspberry",
                                modname .. ":ice_cream_pistachio_vanilla",
                                modname .. ":ice_cream_blueberry_lemon"
                            },
                            {"","group:food_bowl", ""},
                       },
                rep = {
                            {"group:food_bowl", modname .. ":bowl"},
                        },
             },
            -- Ice wafer single
            {
                name = "ice_wafer_blackberry",
                rec = {
                            {modname .. ":ice_ball_blackberry"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_blueberry",
                rec = {
                            {modname .. ":ice_ball_blueberry"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_chocolate",
                rec = {
                            {modname .. ":ice_ball_chocolate"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_pistachio",
                rec = {
                            {modname .. ":ice_ball_pistachio"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_strawberry",
                rec = {
                            {modname .. ":ice_ball_strawberry"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_vanilla",
                rec = {
                            {modname .. ":ice_ball_vanilla"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            -- Ice wafer double
            {
                name = "ice_wafer_blackberry_pistachio",
                rec = {
                            {modname .. ":ice_ball_blackberry", modname .. ":ice_ball_pistachio"},
                            {modname .. ":wafer", ""},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_blackberry_strawberry",
                rec = {
                            {modname .. ":ice_ball_blackberry", modname .. ":ice_ball_strawberry"},
                            {modname .. ":wafer", ""},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_blueberry_chocolate",
                rec = {
                            {modname .. ":ice_ball_blueberry", modname .. ":ice_ball_chocolate"},
                            {modname .. ":wafer", ""},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_blueberry_vanilla",
                rec = {
                            {modname .. ":ice_ball_blueberry", modname .. ":ice_ball_vanilla"},
                            {modname .. ":wafer", ""},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_chocolate_strawberry",
                rec = {
                            {modname .. ":ice_ball_chocolate", modname .. ":ice_ball_strawberry"},
                            {modname .. ":wafer", ""},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_pistachio_blueberry",
                rec = {
                            {modname .. ":ice_ball_pistachio", modname .. ":ice_ball_blueberry"},
                            {modname .. ":wafer", ""},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_strawberry_blueberry",
                rec = {
                            {modname .. ":ice_ball_strawberry", modname .. ":ice_ball_blueberry"},
                            {modname .. ":wafer", ""},
                       },
                rep = nil,
             },
            {
                name = "ice_wafer_strawberry_pistachio",
                rec = {
                            {modname .. ":ice_ball_strawberry", modname .. ":ice_ball_pistachio"},
                            {modname .. ":wafer", ""},
                       },
                rep = nil,
             },
            -- Ice wafer crea,
            {
                name = "ice_wafercream_blackberry_lemon",
                rec = {
                            {modname .. ":ice_cream_blackberry_lemon"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafercream_blueberry_lemon",
                rec = {
                            {modname .. ":ice_cream_blueberry_lemon"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafercream_blueberry_raspberry",
                rec = {
                            {modname .. ":ice_cream_blueberry_raspberry"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafercream_pistachio_vanilla",
                rec = {
                            {modname .. ":ice_cream_pistachio_vanilla"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafercream_strawberry_raspberry",
                rec = {
                            {modname .. ":ice_cream_strawberry_raspberry"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },
            {
                name = "ice_wafercream_walnut_vanilla",
                rec = {
                            {modname .. ":ice_cream_walnut_vanilla"},
                            {modname .. ":wafer"},
                       },
                rep = nil,
             },

        } -- recipes

for _,value in pairs(recipes) do
    minetest.register_craft({
                                output = modname .. ":" .. value.name,
                                recipe = value.rec,
                                replacements = value.rep,
                            })

end -- for _,value
