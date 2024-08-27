#check to see what we've got

scoreboard players set #testReset value 0

#go back
scoreboard players set #testSlotA value 0
execute if items entity @s enderchest.* purple_dye run scoreboard players set #testSlotA value 1
execute if score #testSlotA value matches 0 run scoreboard players add #testReset value 1


#stardust
scoreboard players set #testSlotC value 0
execute if items entity @s enderchest.* yellow_wool run scoreboard players set #testSlotC value 1
execute if score #testSlotC value matches 0 run scoreboard players add #testReset value 1

#timer
scoreboard players set #testSlotD value 0
execute if items entity @s enderchest.* red_wool[custom_data~{setModeTimeAttack:1b}] run scoreboard players set #testSlotD value 1
execute if score #testSlotD value matches 0 if score #timeAttackUnlocked value matches 1 run scoreboard players add #testReset value 1

#chest
scoreboard players set #testSlotE value 0
execute if items entity @s enderchest.* red_wool[custom_data~{setModeVersus:1b}] run scoreboard players set #testSlotE value 1
execute if score #testSlotE value matches 0 run scoreboard players add #testReset value 1


#missing one slot but still have the others? we clicked something!
execute if score #testReset value matches 1 if score #testSlotA value matches 0 run function phan:game/0/admin_panel/click_back_to_primary
execute if score #testReset value matches 1 if score #testSlotC value matches 0 run function phan:game/0/admin_panel/click_play_score_attack
execute if score #testReset value matches 1 if score #testSlotD value matches 0 if score #timeAttackUnlocked value matches 1 run function phan:game/0/admin_panel/click_play_time_attack
execute if score #testReset value matches 1 if score #testSlotE value matches 0 run function phan:game/0/admin_panel/click_play_versus


#clear items if there's a we have something we shouldn't
execute if score #testReset value matches 1.. run function phan:game/0/admin_panel/clear_items


#restore inventory
item replace entity @s enderchest.0 with minecraft:purple_dye[custom_name='{"translate":"gp.admin.go_back","bold":true,"italic":false}',custom_data={adminMenu:1b,goBack:1b}]
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air

item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with minecraft:yellow_wool[custom_model_data=1111111,custom_name='{"translate":"gp.mode_select.score_attack","bold":true,"italic":false,"color":"yellow"}',lore=['{"text":" "}','{"translate":"gp.mode_select.1_player","bold":false,"italic":true,"color":"white"}'],custom_data={setModeScoreAttack:1b,adminMenu:1b}]
execute unless score #timeAttackUnlocked value matches 1 run item replace entity @s enderchest.13 with air
execute if score #timeAttackUnlocked value matches 1 run item replace entity @s enderchest.13 with minecraft:red_wool[custom_model_data=1111112,custom_name='{"translate":"gp.mode_select.time_attack","bold":true,"italic":false,"color":"red"}',lore=['{"text":" "}','{"translate":"gp.mode_select.1_player","bold":false,"italic":true,"color":"white"}'],custom_data={setModeTimeAttack:1b,adminMenu:1b}]
item replace entity @s enderchest.14 with minecraft:red_wool[custom_model_data=1111131,custom_name='{"translate":"gp.mode_select.versus","bold":true,"italic":false,"color":"light_purple"}',lore=['{"text":" "}','{"translate":"gp.mode_select.1_to_24_players_bots","bold":false,"italic":true,"color":"white"}'],custom_data={setModeVersus:1b,adminMenu:1b}]
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