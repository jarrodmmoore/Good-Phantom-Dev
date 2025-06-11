#X marks the slots

#[-][-][-][-][-][-][-][-][-]
#[-][o][o][o][o][o][o][o][-]
#[-][-][-][X][X][X][-][-][-]

#log what items we have
execute store result score #slot21 inventoryCheck run execute if items entity @s inventory.21 gray_dye[custom_data~{InvUI:21}]
execute store result score #slot22 inventoryCheck run execute if items entity @s inventory.22 gray_dye[custom_data~{InvUI:22}]
execute store result score #slot23 inventoryCheck run execute if items entity @s inventory.23 gray_dye[custom_data~{InvUI:23}]

#if one button is missing but the others still exist, that's an input
#join game
execute unless score #slot21 inventoryCheck matches 1 if score #slot23 inventoryCheck matches 1 if score @s joinGame matches -2147483648..2147483647 run scoreboard players set @s joinGame 1
#exit
execute unless score #slot22 inventoryCheck matches 1 if score #slot23 inventoryCheck matches 1 if score @s exit matches -2147483648..2147483647 run scoreboard players set @s exit 1
#restart
execute unless score #slot23 inventoryCheck matches 1 if score #slot21 inventoryCheck matches 1 if score @s restart matches -2147483648..2147483647 run scoreboard players set @s restart 1

#make sure we have the buttons (state reflects whether we have access to the trigger or not)
#join game
execute unless score #slot21 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:21}]
execute if score @s joinGame matches -2147483648..2147483647 run item replace entity @s inventory.21 with gray_dye[custom_data={InvUI:21},item_model="gp/inventory/crafting/join_active",custom_name={translate:"gp.inventory.join_game",color:white,bold:true,italic:false}]
execute unless score @s joinGame matches -2147483648..2147483647 run item replace entity @s inventory.21 with gray_dye[custom_data={InvUI:21},item_model="gp/inventory/crafting/join_inactive",custom_name={translate:"gp.inventory.join_game",color:gray,bold:true,italic:false},lore=[{translate:"gp.inventory.not_applicable",color:red,italic:true}]]
#exit
execute unless score #slot22 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:22}]
execute if score @s exit matches -2147483648..2147483647 run item replace entity @s inventory.22 with gray_dye[custom_data={InvUI:22},item_model="gp/inventory/crafting/exit_active",custom_name={translate:"gp.inventory.exit",color:white,bold:true,italic:false}]
execute unless score @s exit matches -2147483648..2147483647 run item replace entity @s inventory.22 with gray_dye[custom_data={InvUI:22},item_model="gp/inventory/crafting/exit_inactive",custom_name={translate:"gp.inventory.exit",color:gray,bold:true,italic:false},lore=[{translate:"gp.inventory.not_available",color:red,italic:true}]]
#restart
execute unless score #slot23 inventoryCheck matches 1 run clear @s gray_dye[custom_data~{InvUI:23}]
execute if score @s restart matches -2147483648..2147483647 run item replace entity @s inventory.23 with gray_dye[custom_data={InvUI:23},item_model="gp/inventory/crafting/restart_active",custom_name={translate:"gp.inventory.restart",color:white,bold:true,italic:false}]
execute unless score @s restart matches -2147483648..2147483647 run item replace entity @s inventory.23 with gray_dye[custom_data={InvUI:23},item_model="gp/inventory/crafting/restart_inactive",custom_name={translate:"gp.inventory.restart",color:gray,bold:true,italic:false},lore=[{translate:"gp.inventory.not_available",color:red,italic:true}]]


#clear out the other slots

#[X][X][X][X][X][X][o][o][o]
#[o][-][-][-][-][-][-][-][o]
#[o][o][o][-][-][-][o][o][o]

item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
