#X marks the slots

#[-][-][-][o][o][o][-][-][-]
#[-][o][o][o][o][o][X][X][-]
#[-][-][-][-][-][-][-][-][-]

#log what items we have
execute store result score #slot15 inventoryCheck run execute if items entity @s inventory.15 gray_dye[custom_data~{InvUI:15}]
execute store result score #slot16 inventoryCheck run execute if items entity @s inventory.16 gray_dye[custom_data~{InvUI:16}]

#(spectator doesn't handle inputs here)

#make sure we have the buttons (state reflects player's settings)
#bind drop key
execute unless score #slot15 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:15}]
execute if score @s dropKeyBind matches ..0 run item replace entity @s inventory.15 with gray_dye[custom_data={InvUI:15},item_model="gp/inventory/crafting/keybind_drop",custom_name={translate:"gp.inventory.drop_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.boost",color:yellow,italic:false},{translate:"gp.game.bite",color:gray,italic:false},{translate:"gp.game.light_projectile",color:gray,italic:false},{translate:"gp.game.heavy_projectile",color:gray,italic:false},{translate:"gp.game.ever_eye",color:gray,italic:false},"",{text:"/trigger bindDropKey",color:aqua,italic:true}]]
execute if score @s dropKeyBind matches 1 run item replace entity @s inventory.15 with gray_dye[custom_data={InvUI:15},item_model="gp/inventory/crafting/keybind_drop",custom_name={translate:"gp.inventory.drop_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.boost",color:gray,italic:false},{translate:"gp.game.bite",color:yellow,italic:false},{translate:"gp.game.light_projectile",color:gray,italic:false},{translate:"gp.game.heavy_projectile",color:gray,italic:false},{translate:"gp.game.ever_eye",color:gray,italic:false},"",{text:"/trigger bindDropKey",color:aqua,italic:true}]]
execute if score @s dropKeyBind matches 2 run item replace entity @s inventory.15 with gray_dye[custom_data={InvUI:15},item_model="gp/inventory/crafting/keybind_drop",custom_name={translate:"gp.inventory.drop_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.boost",color:gray,italic:false},{translate:"gp.game.bite",color:gray,italic:false},{translate:"gp.game.light_projectile",color:yellow,italic:false},{translate:"gp.game.heavy_projectile",color:gray,italic:false},{translate:"gp.game.ever_eye",color:gray,italic:false},"",{text:"/trigger bindDropKey",color:aqua,italic:true}]]
execute if score @s dropKeyBind matches 3 run item replace entity @s inventory.15 with gray_dye[custom_data={InvUI:15},item_model="gp/inventory/crafting/keybind_drop",custom_name={translate:"gp.inventory.drop_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.boost",color:gray,italic:false},{translate:"gp.game.bite",color:gray,italic:false},{translate:"gp.game.light_projectile",color:gray,italic:false},{translate:"gp.game.heavy_projectile",color:yellow,italic:false},{translate:"gp.game.ever_eye",color:gray,italic:false},"",{text:"/trigger bindDropKey",color:aqua,italic:true}]]
execute if score @s dropKeyBind matches 4.. run item replace entity @s inventory.15 with gray_dye[custom_data={InvUI:15},item_model="gp/inventory/crafting/keybind_drop",custom_name={translate:"gp.inventory.drop_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.boost",color:gray,italic:false},{translate:"gp.game.bite",color:gray,italic:false},{translate:"gp.game.light_projectile",color:gray,italic:false},{translate:"gp.game.heavy_projectile",color:gray,italic:false},{translate:"gp.game.ever_eye",color:yellow,italic:false},"",{text:"/trigger bindDropKey",color:aqua,italic:true}]]
#bind swap key
execute unless score #slot16 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:16}]
execute if score @s swapKeyBind matches ..0 run item replace entity @s inventory.16 with gray_dye[custom_data={InvUI:16},item_model="gp/inventory/crafting/keybind_swap",custom_name={translate:"gp.inventory.swap_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.bite",color:gray,italic:false},{translate:"gp.game.light_projectile",color:gray,italic:false},{translate:"gp.game.heavy_projectile",color:gray,italic:false},{translate:"gp.game.ever_eye",color:gray,italic:false},{translate:"gp.game.boost",color:yellow,italic:false},"",{text:"/trigger bindSwapKey",color:aqua,italic:true}]]
execute if score @s swapKeyBind matches 1 run item replace entity @s inventory.16 with gray_dye[custom_data={InvUI:16},item_model="gp/inventory/crafting/keybind_swap",custom_name={translate:"gp.inventory.swap_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.bite",color:yellow,italic:false},{translate:"gp.game.light_projectile",color:gray,italic:false},{translate:"gp.game.heavy_projectile",color:gray,italic:false},{translate:"gp.game.ever_eye",color:gray,italic:false},{translate:"gp.game.boost",color:gray,italic:false},"",{text:"/trigger bindSwapKey",color:aqua,italic:true}]]
execute if score @s swapKeyBind matches 2 run item replace entity @s inventory.16 with gray_dye[custom_data={InvUI:16},item_model="gp/inventory/crafting/keybind_swap",custom_name={translate:"gp.inventory.swap_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.bite",color:gray,italic:false},{translate:"gp.game.light_projectile",color:yellow,italic:false},{translate:"gp.game.heavy_projectile",color:gray,italic:false},{translate:"gp.game.ever_eye",color:gray,italic:false},{translate:"gp.game.boost",color:gray,italic:false},"",{text:"/trigger bindSwapKey",color:aqua,italic:true}]]
execute if score @s swapKeyBind matches 3 run item replace entity @s inventory.16 with gray_dye[custom_data={InvUI:16},item_model="gp/inventory/crafting/keybind_swap",custom_name={translate:"gp.inventory.swap_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.bite",color:gray,italic:false},{translate:"gp.game.light_projectile",color:gray,italic:false},{translate:"gp.game.heavy_projectile",color:yellow,italic:false},{translate:"gp.game.ever_eye",color:gray,italic:false},{translate:"gp.game.boost",color:gray,italic:false},"",{text:"/trigger bindSwapKey",color:aqua,italic:true}]]
execute if score @s swapKeyBind matches 4.. run item replace entity @s inventory.16 with gray_dye[custom_data={InvUI:16},item_model="gp/inventory/crafting/keybind_swap",custom_name={translate:"gp.inventory.swap_key_action",color:white,bold:true,italic:false},lore=[{translate:"gp.game.bite",color:gray,italic:false},{translate:"gp.game.light_projectile",color:gray,italic:false},{translate:"gp.game.heavy_projectile",color:gray,italic:false},{translate:"gp.game.ever_eye",color:yellow,italic:false},{translate:"gp.game.boost",color:gray,italic:false},"",{text:"/trigger bindSwapKey",color:aqua,italic:true}]]


#clear out the other slots

#[o][o][o][-][-][-][o][o][o]
#[o][-][-][-][-][-][-][-][o]
#[o][o][o][o][X][X][X][X][X]

item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air