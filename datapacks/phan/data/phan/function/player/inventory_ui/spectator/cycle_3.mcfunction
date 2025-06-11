#X marks the slots

#[-][-][-][o][o][o][-][-][-]
#[-][o][o][o][X][X][o][o][-]
#[-][-][-][-][-][-][-][-][-]

#log what items we have
execute store result score #slot13 inventoryCheck run execute if items entity @s inventory.13 gray_dye[custom_data~{InvUI:13}]
execute store result score #slot14 inventoryCheck run execute if items entity @s inventory.14 gray_dye[custom_data~{InvUI:14}]

#(spectator doesn't handle inputs here)

#make sure we have the buttons (state reflects player's settings)
#auto jump pads
execute unless score #slot13 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:13}]
execute if entity @s[tag=!noAutoJumpPads] run item replace entity @s inventory.13 with gray_dye[custom_data={InvUI:13},item_model="gp/inventory/crafting/auto_jump_pads",custom_name={translate:"gp.inventory.jump_pads",color:white,bold:true,italic:false},lore=[{translate:"gp.misc.on",color:yellow,italic:false},{translate:"gp.misc.off",color:gray,italic:false},"",{text:"/trigger toggleAutoJumpPads",color:aqua,italic:true}]]
execute if entity @s[tag=noAutoJumpPads] run item replace entity @s inventory.13 with gray_dye[custom_data={InvUI:13},item_model="gp/inventory/crafting/auto_jump_pads",custom_name={translate:"gp.inventory.jump_pads",color:white,bold:true,italic:false},lore=[{translate:"gp.misc.on",color:gray,italic:false},{translate:"gp.misc.off",color:yellow,italic:false},"",{text:"/trigger toggleAutoJumpPads",color:aqua,italic:true}]]
#auto reset
execute unless score #slot14 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:14}]
execute if entity @s[tag=!noAutoReset] run item replace entity @s inventory.14 with gray_dye[custom_data={InvUI:14},item_model="gp/inventory/crafting/auto_reset_on",custom_name={translate:"gp.inventory.auto_reset_on_missed_checkpoint",color:white,bold:true,italic:false},lore=[{translate:"gp.misc.on",color:yellow,italic:false},{translate:"gp.misc.off",color:gray,italic:false},"",{text:"/trigger toggleAutoReset",color:aqua,italic:true}]]
execute if entity @s[tag=noAutoReset] run item replace entity @s inventory.14 with gray_dye[custom_data={InvUI:14},item_model="gp/inventory/crafting/auto_reset_off",custom_name={translate:"gp.inventory.auto_reset_on_missed_checkpoint",color:white,bold:true,italic:false},lore=[{translate:"gp.misc.on",color:gray,italic:false},{translate:"gp.misc.off",color:yellow,italic:false},"",{text:"/trigger toggleAutoReset",color:aqua,italic:true}]]


#clear out the other slots

#[o][o][o][-][-][-][o][o][o]
#[o][-][-][-][-][-][-][-][X]
#[X][X][X][X][o][o][o][o][o]

item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air