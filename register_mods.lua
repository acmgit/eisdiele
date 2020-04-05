local modname = eisdiele.modname
local eis = {
      --                Name                       Saturation      Replace with                Poison  Heal    Sound
      -- crops
      {modname .. ':wafer',                         1,              nil,                        nil,    nil,     nil},
    }

for _,value in pairs(eisdiele.ice_ball) do
    --              Name                                    Saturation      Replace with    Poison      Heal    Sound
    eis[#eis+1] = {modname .. ":ice_ball_" .. value.name,   value.eat,      nil,            nil,        nil,    nil}
    
end

for _,value in pairs(eisdiele.ice_ball) do
    --              Name                                    Saturation      Replace with    Poison      Heal    Sound
    eis[#eis+1] = {modname .. ":ice_wafer_" .. value.name,  value.eat+1,    nil,            nil,        nil,    nil}
    
end

for _,value in pairs(eisdiele.ice_wafer) do
    --              Name                                    Saturation      Replace with    Poison      Heal    Sound
    eis[#eis+1] = {modname .. ":ice_wafer_" .. value.name,  value.eat,      nil,            nil,        nil,    nil}
    
end

for _,value in pairs(eisdiele.ice_cream) do
    --              Name                                    Saturation      Replace with    Poison      Heal    Sound
    eis[#eis+1] = {modname .. ":ice_cream_" .. value.name,  value.eat,      nil,            nil,        nil,    nil}
    
end

for _,value in pairs(eisdiele.ice_cream) do
    --              Name                                            Saturation      Replace with    Poison      Heal    Sound
    eis[#eis+1] = {modname .. ":ice_wafercream_" .. value.name,     value.eat,      nil,            nil,        nil,    nil}
    
end

for _,value in pairs(eisdiele.ice_cup) do
    --              Name                                        Saturation      Replace with                Poison      Heal    Sound
    eis[#eis+1] = {modname .. ":" .. value.name,                value.eat,      modname .. ":bowl",         nil,        nil,    nil}
    
end

--[[
for _,value in pairs(eis) do
    print(value[1] .. " - " .. value[2])
end
]]--

--   *******************************************
--   *****           Hunger-Support        *****
--   *******************************************

if(minetest.get_modpath("hunger")) then
    for key, item in pairs(eis) do
        hunger.register_food(item)

    end -- for key, data

end -- hunger

--   **********************************************
--   *****           Hunger_ng-Support        *****
--   **********************************************

if(minetest.get_modpath("hunger_ng")) then
    local add = hunger_ng.add_hunger_data

    for key, item in pairs(eis) do
        print(item[1] .. " - " .. item[2])
        add(item[1], {satiates = item[2], returns = item[3], heals = math.floor((item[5] or 0)), timeout = 0})

    end -- for key, data

end -- hunger_ng

--   *******************************************
--   *****           Diet-Support          *****
--   *******************************************

if(minetest.get_modpath("diet")) then

    local function overwrite(name, hunger_change, replace_with_item, poisen, heal)
        local tab = minetest.registered_items[name]
        if not tab then
            return
        end
        tab.on_use = diet.item_eat(hunger_change, replace_with_item, poisen, heal)
    end -- local function overwrite

    for key,item in pairs(eis) do
        overwrite(item[1], item[2], item[3], item[4], item[5])

    end -- for key,item

end -- if(minetest.get_modpath("diet
