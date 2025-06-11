#X marks the slots

#[-][-][-][X][X][X][-][-][-]
#[-][o][o][o][o][o][o][o][-]
#[-][-][-][-][-][-][-][-][-]

#log what items we have
execute store result score #slot3 inventoryCheck run execute if items entity @s inventory.3 gray_dye[custom_data~{InvUI:3}]
execute store result score #slot4 inventoryCheck run execute if items entity @s inventory.4 gray_dye[custom_data~{InvUI:4}]
execute store result score #slot5 inventoryCheck run execute if items entity @s inventory.5 gray_dye[custom_data~{InvUI:5}]

#if one button is missing but the others still exist, that's an input
#join game
execute if score #slot3 inventoryCheck matches 1 unless score #slot5 inventoryCheck matches 1 if score @s joinGame matches -2147483648..2147483647 run scoreboard players set @s joinGame 1
#exit
execute if score #slot4 inventoryCheck matches 1 unless score #slot5 inventoryCheck matches 1 if score @s exit matches -2147483648..2147483647 run scoreboard players set @s exit 1
#restart
execute if score #slot5 inventoryCheck matches 1 unless score #slot3 inventoryCheck matches 1 if score @s restart matches -2147483648..2147483647 run scoreboard players set @s restart 1

#make sure we have the buttons (state reflects whether we have access to the trigger or not)
#join game
execute unless score #slot3 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:3}]
execute if score @s joinGame matches -2147483648..2147483647 run item replace entity @s inventory.3 with gray_dye[custom_data={InvUI:3},item_model="gp/inventory/crafting/join_active",custom_name={translate:"gp.inventory.join_game",color:white,bold:true,italic:false}]
execute unless score @s joinGame matches -2147483648..2147483647 run item replace entity @s inventory.3 with gray_dye[custom_data={InvUI:3},item_model="gp/inventory/crafting/join_inactive",custom_name={translate:"gp.inventory.join_game",color:gray,bold:true,italic:false},lore=[{translate:"gp.inventory.not_applicable",color:red,italic:true}]]
#exit
execute unless score #slot4 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:4}]
execute if score @s exit matches -2147483648..2147483647 run item replace entity @s inventory.4 with gray_dye[custom_data={InvUI:3},item_model="gp/inventory/crafting/exit_active",custom_name={translate:"gp.inventory.exit",color:white,bold:true,italic:false}]
execute unless score @s exit matches -2147483648..2147483647 run item replace entity @s inventory.4 with gray_dye[custom_data={InvUI:3},item_model="gp/inventory/crafting/exit_inactive",custom_name={translate:"gp.inventory.exit",color:gray,bold:true,italic:false},lore=[{translate:"gp.inventory.not_available",color:red,italic:true}]]
#restart
execute unless score #slot5 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:5}]
execute if score @s restart matches -2147483648..2147483647 run item replace entity @s inventory.5 with gray_dye[custom_data={InvUI:3},item_model="gp/inventory/crafting/restart_active",custom_name={translate:"gp.inventory.restart",color:white,bold:true,italic:false}]
execute unless score @s restart matches -2147483648..2147483647 run item replace entity @s inventory.5 with gray_dye[custom_data={InvUI:3},item_model="gp/inventory/crafting/restart_inactive",custom_name={translate:"gp.inventory.restart",color:gray,bold:true,italic:false},lore=[{translate:"gp.inventory.not_available",color:red,italic:true}]]


#clear out the other slots

#[X][X][X][-][-][-][o][o][o]
#[o][-][-][-][-][-][-][-][o]
#[o][o][o][o][o][o][o][o][o]

item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air