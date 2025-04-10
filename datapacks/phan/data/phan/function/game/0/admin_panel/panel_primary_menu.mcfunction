#lock -- slot 2
#point reset -- slot 4
#tnt -- slot 6


#should we be offering a point reset?
scoreboard players set #offerPointReset value 0
execute if entity @a[scores={versusPoints=1..}] run scoreboard players set #offerPointReset value 1
execute if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={versusPoints=1..}] run scoreboard players set #offerPointReset value 1


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

#assist mode admin only
scoreboard players set #testSlotF value 0
execute if items entity @s enderchest.* chest[custom_data~{assistMenuAdmin:1b}] run scoreboard players set #testSlotF value 1
execute if score #testSlotF value matches 0 run scoreboard players add #testReset value 1

#assist mode admin only
scoreboard players set #testSlotG value 0
execute if items entity @s enderchest.* command_block[custom_data~{customGrandPrixAdmin:1b}] run scoreboard players set #testSlotG value 1
execute if score #testSlotG value matches 0 run scoreboard players add #testReset value 1

#unlock everything
scoreboard players set #testSlotE value 0
execute if items entity @s enderchest.* pink_candle[custom_data~{unlockEverything:1b}] run scoreboard players set #testSlotE value 1
execute if score #testSlotE value matches 0 run scoreboard players add #testReset value 1

#point reset (if available)
scoreboard players set #testSlotB value 0
execute if items entity @s enderchest.* red_dye[custom_data~{resetVersusPoints:1b}] run scoreboard players set #testSlotB value 1
execute if score #testSlotB value matches 0 if score #offerPointReset value matches 1 run scoreboard players add #testReset value 1

#tnt
scoreboard players set #testSlotC value 0
execute if items entity @s enderchest.* tnt run scoreboard players set #testSlotC value 1
execute if score #testSlotC value matches 0 run scoreboard players add #testReset value 1


#missing one slot but still have the others? we clicked something!
execute if score #testReset value matches 1 if score #testSlotA value matches 0 run function phan:game/0/admin_panel/click_admin_mode
execute if score #testReset value matches 1 if score #testSlotE value matches 0 run function phan:__unlock_all_levels
execute if score #testReset value matches 1 if score #offerPointReset value matches 1 if score #testSlotB value matches 0 run function phan:game/0/admin_panel/reset_versus_points
execute if score #testReset value matches 1 if score #testSlotC value matches 0 run function phan:game/0/admin_panel/click_erase_data
execute if score #testReset value matches 1 if score #testSlotF value matches 0 run function phan:game/0/admin_panel/click_assist_menu
execute if score #testReset value matches 1 if score #testSlotG value matches 0 run function phan:game/0/admin_panel/click_custom_grand_prix


#clear items if we have something we shouldn't
execute if score #testReset value matches 1.. run function phan:game/0/admin_panel/clear_items


#restore inventory
#ROW 1
item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
#assist mode admin only?
execute if score #assistMenuAdminOnly value matches 1 run item replace entity @s enderchest.2 with chest[custom_name={translate:"gp.admin.assist_mode_menu",bold:true,italic:false},lore=[{translate:"gp.admin.open_to_all",color:"gray",bold:false,italic:false},{translate:"gp.admin.admin_only",color:"yellow",bold:false,italic:false}],custom_data={adminMenu:1b,assistMenuAdmin:1b}]
execute unless score #assistMenuAdminOnly value matches 1 run item replace entity @s enderchest.2 with chest[custom_name={translate:"gp.admin.assist_mode_menu",bold:true,italic:false},lore=[{translate:"gp.admin.open_to_all",color:"yellow",bold:false,italic:false},{translate:"gp.admin.admin_only",color:"gray",bold:false,italic:false}],custom_data={adminMenu:1b,assistMenuAdmin:1b}]

item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
#i am considering adding an "arcade mode" and putting the button for it here...
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with pink_candle[custom_name={translate:"gp.admin.unlock_everything",bold:true,italic:false,color:"yellow"},custom_data={adminMenu:1b,unlockEverything:1b}]
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air

#ROW 2
item replace entity @s enderchest.9 with air
#admin mode info
execute unless score #adminMode value matches 1 run item replace entity @s enderchest.10 with air
execute if score #adminMode value matches 1 run item replace entity @s enderchest.10 with red_dye[item_model="gp/inventory/assist_mode/assist_mode_warning",custom_name={translate:"gp.admin.admin_mode_info_1",bold:true,italic:false},lore=[{text:" "},{translate:"gp.admin.admin_mode_info_2",bold:false,italic:true,color:"white"},{translate:"gp.admin.admin_mode_info_3",bold:false,italic:true,color:"white"}],custom_data={adminMenu:1b,adminModeSet:1b}]
#admin mode lock
execute unless score #adminMode value matches 1 run item replace entity @s enderchest.11 with pink_dye[custom_name={translate:"gp.admin.admin_mode",bold:true,italic:false},lore=[{translate:"gp.misc.on",color:"gray",bold:false,italic:false},{translate:"gp.misc.off",color:"yellow",bold:false,italic:false}],custom_data={adminMenu:1b,adminModeSet:1b}]
execute if score #adminMode value matches 1 run item replace entity @s enderchest.11 with magenta_dye[custom_name={translate:"gp.admin.admin_mode",bold:true,italic:false},lore=[{translate:"gp.misc.on",color:"yellow",bold:false,italic:false},{translate:"gp.misc.off",color:"gray",bold:false,italic:false}],custom_data={adminMenu:1b,adminModeSet:1b}]
#unlock all levels button
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
#erase all data button
execute if score @s enderChestMenu matches ..0 run item replace entity @s enderchest.15 with tnt[custom_name={translate:"gp.admin.erase_data",bold:true,italic:false,color:"red"},custom_data={adminMenu:1b,eraseData:1b}]
execute if score @s enderChestMenu matches 1.. run item replace entity @s enderchest.15 with tnt[custom_name={translate:"gp.admin.erase_data",bold:true,italic:false,color:"red"},lore=[{text:" "},{translate:"gp.admin.erase_data_info",bold:false,italic:true,color:"white"}],custom_data={adminMenu:1b,eraseData:1b}]
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air

#ROW 3
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
#gp edit admin only?
execute if score #grandPrixEditAdminOnly value matches 1 run item replace entity @s enderchest.20 with command_block[custom_name={translate:"gp.admin.gp_edit_admin",bold:true,italic:false,color:"white"},lore=[{translate:"gp.admin.open_to_all",color:"gray",bold:false,italic:false},{translate:"gp.admin.admin_only",color:"yellow",bold:false,italic:false}],custom_data={adminMenu:1b,customGrandPrixAdmin:1b}]
execute unless score #grandPrixEditAdminOnly value matches 1 run item replace entity @s enderchest.20 with command_block[custom_name={translate:"gp.admin.gp_edit_admin",bold:true,italic:false,color:"white"},lore=[{translate:"gp.admin.open_to_all",color:"yellow",bold:false,italic:false},{translate:"gp.admin.admin_only",color:"gray",bold:false,italic:false}],custom_data={adminMenu:1b,customGrandPrixAdmin:1b}]

item replace entity @s enderchest.21 with air
#reset points button
execute if score #offerPointReset value matches ..0 run item replace entity @s enderchest.22 with air
execute if score #offerPointReset value matches 1.. run item replace entity @s enderchest.22 with red_dye[item_model="gp/inventory/erase_points",custom_name={translate:"gp.misc.reset_points",italic:false,color:"#FF2255"},custom_data={resetVersusPoints:1b,adminMenu:1b}]
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air