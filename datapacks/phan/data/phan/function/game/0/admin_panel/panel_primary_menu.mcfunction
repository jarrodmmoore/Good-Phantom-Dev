#lock -- slot 2
#ender pearl -- slot 4
#tnt -- slot 6

#check to see what we've got

scoreboard players set #testReset value 0

#lock
scoreboard players set #testSlotA value 0
execute if items entity @s enderchest.* pink_dye run scoreboard players set #testSlotA value 1
execute if items entity @s enderchest.* magenta_dye run scoreboard players set #testSlotA value 2
execute if score #testSlotA value matches 0 run scoreboard players add #testReset value 1

#admin mode info
scoreboard players set #testSlotD value 0
execute if items entity @s enderchest.* red_dye run scoreboard players set #testSlotD value 1
execute if score #adminMode value matches 1 if score #testSlotD value matches 0 run scoreboard players add #testReset value 1


#ender pearl
scoreboard players set #testSlotB value 0
execute if items entity @s enderchest.* ender_pearl run scoreboard players set #testSlotB value 1
execute if score #testSlotB value matches 0 run scoreboard players add #testReset value 1

#tnt
scoreboard players set #testSlotC value 0
execute if items entity @s enderchest.* tnt run scoreboard players set #testSlotC value 1
execute if score #testSlotC value matches 0 run scoreboard players add #testReset value 1


#missing one slot but still have the others? we clicked something!
execute if score #testReset value matches 1 if score #testSlotA value matches 0 run function phan:game/0/admin_panel/click_admin_mode
execute if score #testReset value matches 1 if score #testSlotB value matches 0 run function phan:game/0/admin_panel/click_free_play
execute if score #testReset value matches 1 if score #testSlotC value matches 0 run function phan:game/0/admin_panel/click_erase_data


#clear items if there's a we have something we shouldn't
execute if score #testReset value matches 1.. run function phan:game/0/admin_panel/clear_items


#restore inventory
item replace entity @s enderchest.0 with air

execute unless score #adminMode value matches 1 run item replace entity @s enderchest.1 with air
execute if score #adminMode value matches 1 run item replace entity @s enderchest.1 with minecraft:red_dye[item_model="gp/inventory/assist_mode/assist_mode_warning",custom_name='{"translate":"gp.admin.admin_mode_info_1","bold":true,"italic":false}',lore=['{"text":" "}','{"translate":"gp.admin.admin_mode_info_2","bold":false,"italic":true,"color":"white"}','{"translate":"gp.admin.admin_mode_info_3","bold":false,"italic":true,"color":"white"}'],custom_data={adminMenu:1b,adminModeSet:1b}]

execute unless score #adminMode value matches 1 run item replace entity @s enderchest.2 with minecraft:pink_dye[custom_name='{"translate":"gp.admin.admin_mode","bold":true,"italic":false}',lore=['{"translate":"gp.misc.on","color":"gray","bold":false,"italic":false}','{"translate":"gp.misc.off","color":"yellow","bold":false,"italic":false}'],custom_data={adminMenu:1b,adminModeSet:1b}]
execute if score #adminMode value matches 1 run item replace entity @s enderchest.2 with minecraft:magenta_dye[custom_name='{"translate":"gp.admin.admin_mode","bold":true,"italic":false}',lore=['{"translate":"gp.misc.on","color":"yellow","bold":false,"italic":false}','{"translate":"gp.misc.off","color":"gray","bold":false,"italic":false}'],custom_data={adminMenu:1b,adminModeSet:1b}]
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with minecraft:ender_pearl[custom_name='{"translate":"gp.admin.free_play","bold":true,"italic":false}',lore=['{"text":" "}','{"translate":"gp.admin.free_play_info","bold":false,"italic":true,"color":"white"}'],custom_data={adminMenu:1b,freePlay:1b}]
item replace entity @s enderchest.5 with air
execute if score @s enderChestMenu matches ..0 run item replace entity @s enderchest.6 with minecraft:tnt[custom_name='{"translate":"gp.admin.erase_data","bold":true,"italic":false,"color":"red"}',custom_data={adminMenu:1b,eraseData:1b}]
execute if score @s enderChestMenu matches 1.. run item replace entity @s enderchest.6 with minecraft:tnt[custom_name='{"translate":"gp.admin.erase_data","bold":true,"italic":false,"color":"red"}',lore=['{"text":" "}','{"translate":"gp.admin.erase_data_info","bold":false,"italic":true,"color":"white"}'],custom_data={adminMenu:1b,eraseData:1b}]
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air

item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air

item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air