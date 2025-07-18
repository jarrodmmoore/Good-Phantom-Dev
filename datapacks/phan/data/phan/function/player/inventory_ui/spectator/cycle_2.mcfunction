#X marks the slots

#[-][-][-][o][o][o][-][-][-]
#[-][X][X][X][o][o][o][o][-]
#[-][-][-][-][-][-][-][-][-]

#log what items we have
execute store result score #slot10 inventoryCheck run execute if items entity @s inventory.10 gray_dye[custom_data~{InvUI:10}]
execute store result score #slot11 inventoryCheck run execute if items entity @s inventory.11 gray_dye[custom_data~{InvUI:11}]
execute store result score #slot12 inventoryCheck run execute if items entity @s inventory.12 gray_dye[custom_data~{InvUI:12}]

#(spectator doesn't handle inputs here)

#make sure we have the buttons (state reflects player's settings)
#music toggle
execute unless score #slot10 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:10}]
execute if entity @s[tag=!musicDisable] run item replace entity @s inventory.10 with gray_dye[custom_data={InvUI:10},item_model="gp/inventory/crafting/music_on",custom_name={translate:"gp.inventory.join_game",color:white,bold:true,italic:false},lore=[{translate:"gp.misc.on",color:yellow,italic:false},{translate:"gp.misc.off",color:gray,italic:false},"",{text:"/trigger musicToggle",color:aqua,italic:true}]]
execute if entity @s[tag=musicDisable] run item replace entity @s inventory.10 with gray_dye[custom_data={InvUI:10},item_model="gp/inventory/crafting/music_off",custom_name={translate:"gp.inventory.join_game",color:white,bold:true,italic:false},lore=[{translate:"gp.misc.on",color:gray,italic:false},{translate:"gp.misc.off",color:yellow,italic:false},"",{text:"/trigger musicToggle",color:aqua,italic:true}]]
#spectator view (spectateMode)
# 0 = playerPOV
# 1.. = free cam
execute unless score #slot11 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:11}]
execute unless score @s spectateMode matches 1.. run item replace entity @s inventory.11 with gray_dye[custom_data={InvUI:11},item_model="gp/inventory/crafting/spectator_view",custom_name={translate:"gp.inventory.spectator_camera",color:white,bold:true,italic:false},lore=[{translate:"gp.game.spectator_view.player_pov",color:yellow,italic:false},{translate:"gp.game.spectator_view.free_cam",color:gray,italic:false},"",{text:"/trigger spectatorView",color:aqua,italic:true}]]
execute if score @s spectateMode matches 1.. run item replace entity @s inventory.11 with gray_dye[custom_data={InvUI:11},item_model="gp/inventory/crafting/spectator_view",custom_name={translate:"gp.inventory.spectator_camera",color:white,bold:true,italic:false},lore=[{translate:"gp.game.spectator_view.player_pov",color:gray,italic:false},{translate:"gp.game.spectator_view.free_cam",color:yellow,italic:false},"",{text:"/trigger spectatorView",color:aqua,italic:true}]]
#nav compass
execute unless score #slot12 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:12}]
execute if entity @s[tag=!navCompass] run item replace entity @s inventory.12 with gray_dye[custom_data={InvUI:12},item_model="gp/inventory/crafting/navigator_off",custom_name={translate:"gp.inventory.portal_race_checkpoint_compass",color:white,bold:true,italic:false},lore=[{translate:"gp.misc.off",color:yellow,italic:false},{translate:"gp.misc.on",color:gray,italic:false},"",{text:"/trigger navCompass",color:aqua,italic:true}]]
execute if entity @s[tag=navCompass] run item replace entity @s inventory.12 with gray_dye[custom_data={InvUI:12},item_model="gp/inventory/crafting/navigator_on",custom_name={translate:"gp.inventory.portal_race_checkpoint_compass",color:white,bold:true,italic:false},lore=[{translate:"gp.misc.off",color:gray,italic:false},{translate:"gp.misc.on",color:yellow,italic:false},"",{text:"/trigger navCompass",color:aqua,italic:true}]]


#clear out the other slots

#[o][o][o][o][o][o][X][X][X]
#[X][-][-][-][-][-][-][-][o]
#[o][o][o][-][-][-][o][o][o]

item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air